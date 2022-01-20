//
//  OpenMarket - ViewController.swift
//  Created by yagom. 
//  Copyright © yagom. All rights reserved.
// 

import UIKit

class MainViewController: UIViewController {
    private var products: Products?
    private var currentPage: UInt = 1
    private var productList: [Product] = []
    private var currentCellIdentifier = ProductCell.listIdentifier
    
    @IBOutlet private weak var collectionView: ProductsCollectionView!
    @IBOutlet private weak var indicator: UIActivityIndicatorView!
    private var refreshControl: UIRefreshControl = UIRefreshControl()
    
    @IBOutlet private weak var segmentControl: UISegmentedControl! {
        didSet {
            let normal: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.white]
            let selected: [NSAttributedString.Key: Any] = [.foregroundColor: UIColor.black]
            segmentControl.setTitleTextAttributes(normal, for: .normal)
            segmentControl.setTitleTextAttributes(selected, for: .selected)
            segmentControl.selectedSegmentTintColor = .white
            segmentControl.backgroundColor = .black
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        requestProducts {
            self.collectionViewLoad()
        }
        setUpNotification()
        setUpRefreshControl()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is UINavigationController {
            return
        } else if let product = sender as? Product,
                  let nextViewController = segue.destination as? DetailViewController {
            nextViewController.requestDetail(productId: UInt(product.id))
        } else {
            showAlert(message: Message.dataDeliveredFail, completion: nil)
        }
    }
    
    private func setUpRefreshControl() {
        collectionView.refreshControl = refreshControl
        refreshControl.addTarget(self, action: #selector(updateMainView), for: .valueChanged)
    }
    
    private func setUpNotification() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(updateMainView),
            name: .updataMain,
            object: nil
        )
    }
    
    @objc private func updateMainView() {
        currentPage = 1
        productList.removeAll()
        requestProducts {
            self.collectionViewReload()
        }
    }
    
    private func requestProducts(completion: @escaping () -> Void) {
        let networkManager: NetworkManager = NetworkManager()
        guard let request = networkManager.requestListSearch(page: currentPage, itemsPerPage: 20) else {
            showAlert(message: Message.badRequest)
            return
        }
        networkManager.fetch(request: request, decodingType: Products.self) { result in
            switch result {
            case .success(let products):
                self.products = products
                self.productList.append(contentsOf: products.pages)
                completion()
            case .failure(let error):
                DispatchQueue.main.async {
                    self.showAlert(message: error.localizedDescription)
                }
            }
        }
    }
    
    private func collectionViewLoad() {
        DispatchQueue.main.async {
            self.collectionView.dataSource = self
            self.collectionView.delegate = self
            self.indicator.stopAnimating()
            self.indicator.isHidden = true
            self.collectionView.isHidden = false
        }
    }
    
    private func collectionViewReload() {
        DispatchQueue.main.async {
            self.collectionView.reloadData()
            
            if self.refreshControl.isRefreshing {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
                    self.refreshControl.endRefreshing()
                }
            }
        }
    }
    
    @IBAction private func switchSegmentedControl(_ sender: UISegmentedControl) {
        collectionView.reloadData()
        collectionView.scrollToTop()
        switch sender.selectedSegmentIndex {
        case 0:
            currentCellIdentifier = ProductCell.listIdentifier
        case 1:
            currentCellIdentifier = ProductCell.gridIdentifier
        default:
            showAlert(message: Message.unknownError)
            return
        }
    }
}

extension MainViewController: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
        return productList.count
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(
            withReuseIdentifier: currentCellIdentifier,
            for: indexPath
        ) as? ProductCell else {
            showAlert(message: Message.unknownError)
            return UICollectionViewCell()
        }
        cell.configureStyle(of: currentCellIdentifier)
        cell.configureProduct(of: productList[indexPath.row])
        
        return cell
    }
}

extension MainViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAt indexPath: IndexPath
    ) -> CGSize {
        guard let productView = collectionView as? ProductsCollectionView else {
            return CGSize()
        }
        if currentCellIdentifier == ProductCell.listIdentifier {
            return productView.cellSize(numberOFItemsRowAt: .portraitList)
        } else {
            return UIDevice.current.orientation.isLandscape ?
            productView.cellSize(numberOFItemsRowAt: .landscapeGrid) :
            productView.cellSize(numberOFItemsRowAt: .portraitGrid)
        }
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        insetForSectionAt section: Int
    ) -> UIEdgeInsets {
        guard let productView = collectionView as? ProductsCollectionView else {
            return UIEdgeInsets()
        }
        return currentCellIdentifier == ProductCell.listIdentifier ?
        productView.listSectionInset : productView.gridSectionInset
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumLineSpacingForSectionAt section: Int
    ) -> CGFloat {
        guard let productView = collectionView as? ProductsCollectionView else {
            return CGFloat()
        }
        return currentCellIdentifier == ProductCell.listIdentifier ?
        productView.listMinimumLineSpacing : productView.gridMinimumLineSpacing
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        minimumInteritemSpacingForSectionAt section: Int
    ) -> CGFloat {
        guard let productView = collectionView as? ProductsCollectionView else {
            return CGFloat()
        }
        return currentCellIdentifier == ProductCell.listIdentifier ?
        productView.listminimumInteritemSpacing : productView.gridminimumInteritemSpacing
    }
}

extension MainViewController: UICollectionViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let contentHeight = scrollView.contentSize.height
        let yOffset = scrollView.contentOffset.y
        let remainBottomHeight = contentHeight - yOffset
        let frameHeight = scrollView.frame.size.height
        if remainBottomHeight < frameHeight ,
           let products = products, products.hasNext, products.pageNumber == currentPage {
            currentPage += 1
            self.requestProducts {
                self.collectionViewReload()
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        performSegue(withIdentifier: "ProductDetailView", sender: productList[indexPath.item])
        collectionView.deselectItem(at: indexPath, animated: true)
    }
}

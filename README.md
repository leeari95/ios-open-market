# 🛒 오픈마켓 프로젝트

* 팀 프로젝트(2인)
* 프로젝트 기간: 2022.01.03 ~ 2022.01.28

# 목차

- [키워드](#키워드)
- [프로젝트 소개](#%EF%B8%8F-프로젝트-소개)
- [프로젝트 주요기능](#-프로젝트-주요기능)
- [프로젝트 기술 스택](#-프로젝트-기술-스택)
- [고민한 내용](#-고민한-내용)
    + [단일 책임 원칙 준수](#단일-책임-원칙-준수)
    + [의존성 주입 및 Mock타입 설계로 유닛 테스트 진행](#의존성-주입-및-mock타입-설계로-유닛-테스트-진행)
    + [사용자 경험을 고려한 UI 설계](#사용자-경험을-고려한-ui-설계)
- [Trouble Shooting](#-trouble-shooting)
    + ["URLSessionDataTask를 채택한 타입에 init()에 deprecated 경고..?"](#urlsessiondatatask를-채택한-타입에-init에-deprecated-경고)
    + ["Segument Control을 이용하여 화면전환 시 스크롤 위치가 정상적이지 않은 경우"](#segument-control을-이용하여-화면전환-시-스크롤-위치가-정상적이지-않은-경우)
    + ["스크롤 하는 현재 위치가 비정상적으로 카운트되는 현상"](#스크롤-하는-현재-위치가-비정상적으로-카운트되는-현상)
    + ["CollectionView로 Paging시 cell이 밀리는 문제"](#collectionview로-paging시-cell이-밀리는-문제)
- [새롭게 알게된 것](#-새롭게-알게된-것)
    + ["키보드를 화면에서 없애는 여러가지 방법"](#키보드를-화면에서-없애는-여러가지-방법)
    + ["이미지를 리사이즈 하는 방법"](#이미지를-리사이즈-하는-방법)
    + ["키보드가 콘텐츠를 가리지 않도록 하는 방법"](#키보드가-콘텐츠를-가리지-않도록-하는-방법)

## 키워드

- `의존성 주입(DI)` `URLSession`  `URLProtocol` `URLRequest`
- `API` `HTTP` `TCP/IP` `MIME-Type` `multipart/form-data`
- `application/json` `Result` `Codable` `CodingKey` `Async Test`

#

- `UICollectionView` `UICollectionViewFlowLayout`
- `Supplyment` `UICollectionReusableView` `performBatchUpdates`
- `reloadData` `Xib File` `UISegmentedControl`

#

- `NSCache` `UIActivityIndicatorView`

#

- `UIRefreshControl` `UIGraphicsImageRenderer` `UIImagePicker`
- `UIScrollViewDelegate` `UITextField` `UIAlertController`

#

- `UIPageControl` `GestureRecognizer` `UIFontMetrics`
- `UIScrollView`  `zoomScale` `Dynamic Type` `UICollectionView` `Paging`
- `UIAlertController` `UITextFlied`
</br>

## ⭐️ 프로젝트 소개

REST API와의 연동을 통해 간단한 마켓기능을 사용해볼 수 있는 앱이에요. 📱

마켓에 판매할 상품을 등록할 수 있어요 ! 🛒

수정, 삭제 기능을 통해 등록한 상품을 수정해볼 수도 있어요. 🛠

등록되어있는 상품들을 사진을 통해 자세히 볼 수 있습니다. 🔍

</br>

## ✨ 프로젝트 주요기능

> 🔍 앱을 최초에 실행했을 때 데이터가 로드될 때까지 대기 효과를 표시해요.

<img src="https://i.imgur.com/9FDfSdY.gif" width=30%>

#

> 👆🏻 스크롤을 일정 길이 이상 내리게 되면 네트워킹을 통해 다음 리스트를 불러옵니다.

<img src="https://i.imgur.com/Np0uYtH.gif" width=30%>

#

> ♻️ 최상단에서 화면을 아래로 잡아당기면 상품 목록을 갱신할 수 있어요 !

<img src="https://i.imgur.com/oMMViYR.gif" width=30%>

#

> 👀 상단 버튼을 통해 보기모드를 변경할 수 있어요.

<img src="https://i.imgur.com/jB2s2Lz.gif" width=30%>

#

> ✨ 기기 방향에 따라 각 행당 보여주는 상품의 개수가 달라집니다.

![](https://i.imgur.com/6dgNUFt.png)

#

> ➕ 우측 `+` 버튼을 통해 상품을 등록할 수 있어요.

<img src="https://i.imgur.com/3vbG0Ww.gif" width=30%>

#

> 📸 사진첩에서 등록할 사진을 선택할 수 있고, 기존에 등록한 사진을 스크롤링을 통해 확인할 수 있어요.

<img src="https://i.imgur.com/kOrOO6k.gif" width=30%>

#

> 🗑 등록한 이미지의 우측 상단에 위치한 `x`버튼을 통해 이미지를 삭제할 수 있어요.

<img src="https://i.imgur.com/f7mp0cW.gif" width=30%>

#

> 👍🏻 키보드 프레임을 고려하여 입력할 TextView가 키보드에 가리지 않게 제약을 조정했어요.

<img src="https://i.imgur.com/UFIrVok.gif" width=30%>

#

> ⚠️ 실시간으로 입력값의 유효성을 검증할 수 있어요!

<img src="https://i.imgur.com/i8zAjEx.gif" width=30%>

#

> ✔️ 상품을 등록하고나면 자동으로 이전 페이지로 이동하며, 네트워킹을 통해 새 데이터를 갱신해요.

<img src="https://i.imgur.com/QQhjsLR.gif" width=30%>

#

> 🛠 상품 상세 조회 화면 우측 상단의 더보기 버튼을 통해 상품을 수정할 수 있어요.

<img src="https://i.imgur.com/xVVshOm.gif" width=30%>

#

> 🌟 페이징을 통해 여러 이미지를 조회할 수 있어요.

<img src="https://i.imgur.com/CkjCwxI.gif" width=30%>

#

> 🔍 이미지를 클릭하고 2번 탭을 하면 이미지가 2배 크기로 확대/축소가 되요 !

<img src="https://i.imgur.com/Nnfjfbn.gif" width=30%>

#

> 🗑 상품 삭제 후에는 상세화면을 벗어나며 상품 목록을 갱신해요.

<img src="https://i.imgur.com/EiIM2yy.gif" width=30%>


</br>

## 💪🏻 프로젝트 기술 스택

|UI|Network|Decoding / Encoding|Caching|Test|
| --- | --- | -------- | -------- | -------- |
|UIKit|URLSession</br>Data|Codable</br>JSONEncoder / JSONDecoder</br>Data(multipart/form-data)|NSCache|XCTest|

</br>

## 🤔 고민한 내용

### 단일 책임 원칙 준수

* 가독성 향상 및 구조 파악이 수월하도록 각 역할들을 최대한 잘게 쪼개서 설계를 진행하였습니다.

### 의존성 주입 및 Mock타입 설계로 유닛 테스트 진행

* 테스트 작성을 위해 의존성 주입을 활용하여 Mock, Stub 객체를 만들어 활용하였습니다.
* URLProtocol을 상속받은 가짜 Session을 만들고 네트워크와 무관한 테스트를 진행하였습니다.
    * 서버로 보낼 요청(GET, POST, PATCH, DELETE)을 올바르게 만드는지
    * 실패하는 네트워크, 성공하는 네트워크에 따라 핸들링을 하고 있는지

### 사용자 경험을 고려한 UI 설계

* 서버에 상품 목록을 요청했을 때, 이미지는 URL 형태로 받게되는데, 비동기로 작업을 처리하게 되면, 텍스트가 먼저 뜨고 그 다음에 이미지들이 순차적으로 뜨는 현상이 있었습니다.
    * 따라서 모든 데이터가 다운로드가 완료된 시점에 한번에 데이터를 띄워주는 것이 좀더 좋다고 판단되어 대기 표시를 띄운 후 데이터 다운로드를 완료하면 한번에 상품 목록을 띄우도록 구성하였습니다.
* 상품 목록의 다음페이지를 넘어가는 방법을 `Pagination`으로 구현하였습니다.
    * 스크롤이 하단에 가까워지면 다음페이지를 로드하도록 구성
* 기존에는 상품 등록 시 입력값 유효성 검사를 `Done` 버튼을 누를 때마다 Alert을 통해 확인할 수 있었으나, 너무 많은 Alert은 귀찮고 번거롭다고 판단되어, 누르기 전에 실시간으로 확인할 수 있도록 기능 추가하여 사용성을 향상시켜주었습니다.
* 키보드가 콘텐츠를 가리지 않도록 제약조건을 조정하여 구현하였습니다.
* 이미지 상세보기 기능을 추가하여 상품을 좀더 자세히 볼 수 있도록 구현하였습니다.
    * 이미지 터치 시 이미지 상세보기 화면으로 이동
    * 2번 탭을 빠르게 할 때 확대/축소 기능 제공

</br>

## 🛠 Trouble Shooting

### "URLSessionDataTask를 채택한 타입에 init()에 deprecated 경고..?"

- `상황` URLSessionDataTask을 대체할 객체로 `StubURLSessionDataTask` 를 구현하다가 경고를 마주하게 되었다.

```swift
class StubURLSessionDataTask: URLSessionDataTask {
    var dummyData: DummyData?

    // init 부분에서 에러가 났다.
    init(dummy: DummyData?, completionHandler: DataTaskCompletionHandler?) {
        self.dummyData = dummy
        self.dummyData?.completionHandler = completionHandler
    }

    override func resume() {
        dummyData?.completion()
    }
}
```

> 'init()' was deprecated in iOS 13.0: Please use -[NSURLSession dataTaskWithRequest:] or other NSURLSession methods to create instances
> 
- `이유` URLSessionDataTask `init()`이 IOS13 이후에 deprecatede되었기 때문이다. 해당 경고를 없애고 싶어서 구글링을 하다가 `URLProtocol`을 발견하게 되었다.
- `해결` URLProtocol을 상속받은 MockURLProtocol을 만들어서 URLSession configuration을 구성하는 방법으로 문제를 해결하고 기존에 만들었던 StubURLSessionDataTask, DummyData, MockSession 타입은 더이상 사용하지 않게되어 모두 삭제해주었다.
    - `URLProtocol`이란?
        - URL 데이터 로딩을 다루는 추상클래스
    - URLProtocol은 URLProtocolClient 프로토콜을 통해 네트워크 진행 상황을 전달한다.
    - 테스트 번들에서 MockURLProtocol 클래스를 만들고 메소드를 재정의 해준다.
    - 로드를 할 때 설정한 후 전달할 Data, Error, Response를 딕셔너리로 설정해준다.
        - 이 값은 URLProtocol에 연결하여 설정값을 세팅해주기 위한 값이 된다.
    - Unit Test를 위해 상속받아서 오버라이드 함으로써 커스텀 하여 Mock 객체를 새롭게 만들 수 있다.
        - 기존처럼 외부 네트워크에 요청을 직접 보내는 동작이 아니라, 요청을 가로채서 원하는 응답을 반환하게 끔 커스텀 하는 작업이다.
        - 즉 원래 같이 웹 서버에서 데이터를 불러오는 과정이 아니고, 내가 설정한 값(data, response)을 그대로 반환하게 만들어 주는 과정인 것이다.

#

### "Segument Control을 이용하여 화면전환 시 스크롤 위치가 정상적이지 않은 경우"

<img src="https://i.imgur.com/DRtK0Xs.gif" width=30%>

- `상황`  FlowLayout을 활용하여 화면을 전환할 때, 스크롤이 상단에 위치하는게 아니라 제멋대로인 위치에 가있는 현상이 발생했다.
- `이유` 레이아웃이 서로 다르기 때문에 스크롤의 좌표도 다른 것으로 추측이 되었다.
- `해결` 따라서 이 부분을 화면을 전환할 때 스크롤의 위치를 상단에 위치하게 설정해주니 해결되었다.
    
    ```swift
    extension UIScrollView {
        func scrollToTop() {
            let topOffset = CGPoint(x: 0, y: -contentInset.top)
            setContentOffset(topOffset, animated: false)
        }
    }
    ```
  
# 

### "스크롤 하는 현재 위치가 비정상적으로 카운트되는 현상"

> 스크롤이 하단에 가까워지면 다음페이지를 로드하도록 로직을 짰으나, 스크롤하는 현재 위치가 비정상적으로 카운트되어 디코딩이 실패하는 경우가 생겼다. 이를 해결하기 위해 `LLDB`를 활용하여 디버깅을 진행하였다.

- 항상 뜨는 에러는 아니고, 간헐적으로 뜨는 에러다. 스크롤을 하단까지 했을 때 디코딩에 실패하는 경우가 있었다. 디버깅을 해보니 결과는 아래와 같다.
- ![](https://i.imgur.com/jotGTB4.png)
- ![](https://i.imgur.com/YQuHS96.png)
- ![](https://i.imgur.com/cm6J1vD.png)
- 뷰컨트롤러 쪽에서 네트워크 매니저의 `fetch` 메소드를 사용하는 쪽에서 에러가 나는 것 같은데, 네트워크에서는 `success`로 데이터를 가져오긴 했으나 조회를 해보면 데이터가 비어있는 것을 확인할 수 있었다.
- ![](https://i.imgur.com/rHL8Ebf.png)
- Response를 확인해보면 `204`코드로 응답하고 있다.
- ![](https://i.imgur.com/EiaoQJ1.png)
- 스크롤 하는 부분에 중단점을 찍고 확인해보니 `currentPage`가 `104`가 되어있는 것도 확인되었다. 저 조건문이라면 104가 될 수가 없는데.. 어느순간 스크롤을 계산하는 부분(`yOffset`)에서 에러가 발생해서 비정상적으로 currentPage가 올라가는 것 같다.

```swift
if heightRemainBottomHeight < frameHeight ,
   let page = page, page.hasNext, page.pageNumber == currentPage {
    currentPage += 1
    self.requestProducts()
}
```

- 따라서 위와 같이 조건문을 하나 더 추가해서 안전하게 currentPage를 더해줄 수 있도록 수정해주었다. 이렇게 하니 더이상 해당 버그는 발생하지 않았다.

#

### "CollectionView로 Paging시 cell이 밀리는 문제"

- `문제`  CollectionView의 isPagingEnabled을 true로 주면 아래 예시와 같이 스크롤 했을 때 cell이 조금씩 밀리는 현상이 나타났다.
    
    ![Untitled](https://camo.githubusercontent.com/a807e6deef77c57e0664311f0f555c6f68ead4d7c87523ff92dc05c65c30b3dd/68747470733a2f2f692e696d6775722e636f6d2f7459304e4434632e676966)
    
- `이유` CollectionView의 경우 minimumLineSpacing이 기본적으로 값(10.0)이 들어가있다. 해당 값 때문에 스크롤 시 밀림현상이 있었던 것이였다.
- `해결` minimumLineSpacing을 0으로 설정해주니 스크롤 시 cell이 조금씩 밀리던 현상이 해결되었다.

</br>

## 🔥 새롭게 알게된 것

### "키보드를 화면에서 없애는 여러가지 방법"

* 삽질을 좀 해본 결과 여~러 방법이 있었다.
    * Recognizer를 등록해서 터치시 키보드를 사라지도록 하기.
    ```swift
    // Recognizer를 활용해서 뷰컨을 터치하면 키보드 사라지는 코드
    func hideKeyboard() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }

    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    ```
    * touchesBegan 메소드를 활용하여 View를 터치시 키보드를 사라지게 하기.
    ```swift
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.endEditing(true)
    }    
    ```    
    * ScrollView에 keyboardDismissMode를 drag로 설정해주기
        * `scrollView.keyboardDismissMode = .onDrag`
* 이번 프로젝트에서는 touchesBegan과 ScrollView에 keyboardDismissMode를 활용하여 키보드를 내릴 수 있도록 해주었다.
* addGestureRecognizer는 실험해보았는데, 이걸 등록했을 때 같은 뷰컨에 있는 collectionView의 delegate 메소드가 호출되지 않는 현상을 발견하게 되었다.

> 해결 방법

```swift
extension UIViewController {
    func hideKeyboard() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
        tap.cancelsTouchesInView = false // 이거 추가하니까 해결댐...
    }

    @objc private func dismissKeyboard() {
        view.endEditing(true)
    }
}
```
**[cancelsTouchesInView]**
* Bool 타입의 프로퍼티로 default 값은 true이다.
* Gesture Recognizer가 제스처를 인식하면 나머지 터치정보들을 뷰로 전달하지 않고 이전에 전달된 터치들은 취소된다.
* 하지만 false로 할당한다면 제스처를 인식한 후에도 터치 정보를 뷰에 전달하게 된다.

> 문제가 해결된 이유
기존에는 cancelsTouchesInView값이 true여서 나머지 터치정보들을 뷰로 전달하지 않고 취소되었기 때문에 TableView의 Select가 먹지 않았던 것이였다. false로 할당해줌으로써 제스처를 인식한 후에도 Gesture Recognizer의 패턴과는 무관하게 터치 정보를 뷰에 전달하게 되어 이 문제가 해결되었던 것이다.

#

### "이미지를 리사이즈 하는 방법"

* 크기를 줄이고, 화질을 낮춰서 압축을 한다.
* UIImage를 extension하여 기능을 구현했다.
* 최대 파일 크기를 지정하고 그 이하가 될 때까지 반복하며 이미지의 크기를 줄인다.

```swift
extension UIImage {
    func resized(percentage: CGFloat) -> UIImage { // 사이즈를 퍼센트만큼 리사이즈하는 메소드
        let size = CGSize(width: size.width * percentage, height: size.height * percentage)
        return UIGraphicsImageRenderer(size: size, format: imageRendererFormat).image { _ in
            draw(in: CGRect(origin: .zero, size: size))
        }
    }

    func compress() -> UIImage { // 호출시 Data의 count를 기준으로 용량에 맞게 화질을 낮춘다.
        var compressImage = self
        var quality: CGFloat = 1 // 화질
        let maxDataSize = 307200 // 최대크기
        guard var compressedImageData = compressImage.jpegData(compressionQuality: 1) else {
            return UIImage()
        }
        while compressedImageData.count > maxDataSize {
            quality *= 0.8 // 20퍼센트 씩 감소
            compressImage = compressImage.resized(percentage: quality)
            compressedImageData = compressImage.jpegData(compressionQuality: quality) ?? Data()
        }
        return compressImage
    }
}
```

#

### "키보드가 콘텐츠를 가리지 않도록 하는 방법"

* `1` ScrollView를 활용하기
    * 키보드의 위치만큼 스크롤의 위치를 바꿔주는 방식
* `2` NotificationCenter 활용
    * 키보드가 나타나고 사라질 때마다 Notification의 알림을 받기
    * iOS 9 이상 버전을 타겟으로 앱을 만든다면 자동으로 removeObserver를 해준다. 따라서 신경쓰지 않아도 된다!
        * https://useyourloaf.com/blog/unregistering-nsnotificationcenter-observers-in-ios-9/
```swift
private func setUpNotification() {
    NotificationCenter.default.addObserver(
        self,
        selector: #selector(keyboardWillShow(_:)),
        name: UIResponder.keyboardWillShowNotification, // show
        object: nil
    )
    NotificationCenter.default.addObserver(
        self,
        selector: #selector(keyboardWillHide(_:)),
        name: UIResponder.keyboardWillHideNotification, // hide
        object: nil
    )
}

```
* 알림을 받았을 때 호출할 메소드 구현하기
```swift
@objc private func keyboardWillShow(_ notification: Notification) {
    guard let userInfo = notification.userInfo as NSDictionary?,
          var keyboardFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue,
          let scrollView = self.superview?.superview as? UIScrollView,
          let view = self.superview?.superview?.superview else {
              return
          }
    var contentInset = scrollView.contentInset
    contentInset.bottom = keyboardFrame.size.height
    scrollView.contentInset = contentInset
    scrollView.scrollIndicatorInsets = scrollView.contentInset
}

@objc private func keyboardWillHide(_ notification: NSNotification) {
    guard let scrollView = self.superview?.superview as? UIScrollView else {
        return
    }
    scrollView.contentInset = UIEdgeInsets.zero
    scrollView.scrollIndicatorInsets = scrollView.contentInset
}
```
* Noti로 받은 keyboardFrame을 바인딩 한다.
* 콘텐츠의 상하좌우로 안쪽 여백을 주는 contentInset의 bottom을 keyboardFrame.size의 높이로 대입해준다.
    * ScrollView의 서브뷰 크기를 변경하지 않고 스크롤 뷰 크기를 확장한다는 의미
    * ![](https://soulpark.files.wordpress.com/2012/12/ec8aa4ed81aceba6b0ec83b7-2012-12-30-ec98a4ed9b84-5-12-32.png)
    * 키보드로 인해 가려지는 부분을 스크롤뷰 아래쪽으로` keyboardFrame 사이즈의 높이만큼 버퍼를 추가`하여 스크롤뷰를 확장함으로써 키보드 가림현상을 해결하는 것이다.
* contentInset을 변경하면 `scrollIndicatorInsets`에도 영향을 미친다.
    * 스크롤 시 보이는 스크롤 표시를 말한다.
* `scrollIndicatorInsets`가 `contentInset으로` 추가한 버퍼공간에도 표시가 된다.
    * 이를 방지하기 위해서는 `scrollIndicatorInsets` 속성도 같이 변경해주어야 한다.
* ![](https://i.imgur.com/xywzYXO.gif)
* 이렇게 스크롤뷰를 활용하면 키보드가 화면가리는 현상을 손쉽게 해결할 수 있다.


> ### 그럼.. UITextView는...어떻게?

* 텍스트 필드는 위 방법으로 해결이 되었지만 UITextView는 어떻게 스크롤이 따라오게 만들까?
    * 이 부분은 텍스트뷰의 스크롤 기능을 false로 제거한다.
        * `TextView.isScrollEnabled = false`
    * 그리고 오토레이아웃으로 TextView의 높이가 늘 고정되어있는 것이 아니라 늘어날 수도 있도록 `priority`를 조절해주면 된다.
* 위와 같이 세팅한다면, 텍스트뷰가 안에 Text가 길어질 수록 높이가 늘어나고, 그에 따라 스크롤도 자동으로 내려온다.
    * 해결해보면서 메모장도 이런 방식인건가? 했다...!
* ![](https://i.imgur.com/P3z2Ydx.gif)

</br>

[![top](https://img.shields.io/badge/top-%23000000.svg?&amp;style=for-the-badge&amp;logo=Acclaim&amp;logoColor=white&amp;)](#-오픈마켓-프로젝트)

<details>
<summary>[학습 기록 흔적]</summary>
<div markdown="1">


# 목차

- [STEP 1 : 네트워킹 타입 구현](#step-1--네트워킹-타입-구현)
    + [고민했던 것](#1-1-고민했던-것)
    + [의문점](#1-2-의문점)
    + [Trouble Shooting](#1-3-trouble-shooting)
    + [배운 개념](#1-4-배운-개념)
    + [PR 후 개선사항](#1-5-pr-후-개선사항)
- [STEP 2 : 상품 목록 화면 구현](#step-2--상품-목록-화면-구현)
    + [고민했던 것](#2-1-고민했던-것)
    + [의문점](#2-2-의문점)
    + [Trouble Shooting](#2-3-trouble-shooting)
    + [배운 개념](#2-4-배운-개념)
- [STEP Bouns : 로컬 캐시 구현](#step-bonus--로컬-캐시-구현)
    + [고민했던 것](#3-1-고민했던-것)
    + [의문점](#3-2-의문점)
    + [Trouble Shooting](#3-3-trouble-shooting)
    + [배운 개념](#3-4-배운-개념)
    + [PR 후 개선사항](#3-5-pr-후-개선사항)
- [STEP 3 : 상품 등록/수정 화면 구현](#step-3--상품-등록수정-화면-구현)
    + [고민했던 것](#4-1-고민했던-것)
    + [의문점](#4-2-의문점)
    + [Trouble Shooting](#4-3-trouble-shooting)
    + [배운 개념](#4-4-배운-개념)
    + [PR 후 개선사항](#4-5-pr-후-개선사항)
- [STEP 4 : 상품 상세화면 구현](#step-4--상품-상세화면-구현)
    + [고민했던 것](#5-1-고민했던-것)
    + [의문점](#5-2-의문점)
    + [Trouble Shooting](#5-3-trouble-shooting)
    + [배운 개념](#5-4-배운-개념)

# STEP 1 : 네트워킹 타입 구현

- 네트워크 통신을 담당한 타입을 설계합니다.
- Mock 데이터를 활용하여 단위테스트를 수행합니다.

## 1-1 고민했던 것

### 1. 단일 책임 원칙(Single responsibility principle)

- 한 타입이 하나의 역할만 할 수 있도록 설계에 많은 고민을 해보았다.

### 2. CodingKeys 활용

실제 네트워크에서 내려오는 변수명이 스네이크 케이스를 사용하는 변수는 `Codingkey`를 이용하여 parsing하는 key를 바꿔주었으며 스네이크케이스를 사용하지 않는, 즉 타입의 변수명과 일치하면 rawValue를 명시할 필요가 없어 가독성을 위해 한 줄로 case를 합쳐주었다.

```swift
enum CodingKeys: String, CodingKey {
   case id, stock, name, thumbnail, currency, price, images, vendors
   case vendorID = "vendor_id"
   case bargainPrice = "bargain_price"
   case discountedPrice = "discounted_price"
   case createdAt = "created_at"
   case issuedAt = "issued_at"
}
```

### 3. NetworkManager와 Network

- Network하는 과정에서 역할마다 객체를 구분하여 구현하였다.
    - `Network` : dataTask()를 통해 SessionDataTask를 서버로 전송해 직접 네트워킹하는 객체
        
        ```swift
        func execute(request: URLRequest, completion: @escaping (Result<Data?, Error>) -> Void) {
                session.dataTask(with: request) { data, response, error in
                ...
        ```
        
    - `NetworkManager` : Network의 excute를 통해 data를 받아 decoding하는 fetch()를 가진 객체
        
        ```swift
        func fetch<T: Decodable>(request: URLRequest,
                                    decodingType: T.Type,
                                    completion: @escaping (Result<T, Error>) -> Void) {
                
             network.execute(request: request) { result in
        ```
        

### 4. Name Space

- 하드코딩을 개선하기 위해 enum 타입을 만들어 Address와 HTTPMethod의 값들을 분류해주었다.

### 5. Request, Response

- Request할 때, 그리고 Response하는 타입이 세부적으로 달라 ProductModification, ProductRegistration 등... 각 타입을 모두 구현하였다.

### 6. Overloading function

- 상품 삭제, 등록, 조회 등 여러가지 요청을 request 메소드 하나를 오버로딩을 활용하여 작성하였다.

### 7. Test Doubles

- 테스트 작성을 위해 의존성 주입을 활용하여 Mock, Stub 객체를 만들어 활용하였다.
- URLProtocol을 상속받은 클래스를 만들고 재정의를 해주었다.
    - 이 방법은 URLSession의 dataTask를 직접 Stub으로 만드는 방법도 있었지만, URLSessionDataTask를 채택한 타입에 init()을 정의하니 deprecated 경고가 떠서 이를 해결하기 위해 삭제 후 URLProtocol을 활용하는 방법으로 로직을 변경하였다.

## 1-2 의문점

- 비동기 메서드를 사용하는 동기 메서드는 비동기 메서드 테스트로 진행해야할까?
- URLProtocol과 URLSession의 관계가 정확하게 이해되지 않는다...
    - [https://developer.apple.com/videos/play/wwdc2018/417/](https://developer.apple.com/videos/play/wwdc2018/417/)
- Health Checker의 필요성을 모르겠다..
- 테스트 시 Request의 바디도 체크를 해야할까?

## 1-3 Trouble Shooting

<details>
<summary>1. URLSessionDataTask를 채택한 타입에 init()에 deprecated 경고..?</summary>
<div markdown="1">

### 1. URLSessionDataTask를 채택한 타입에 init()에 deprecated 경고..?

- `상황` URLSessionDataTask을 대체할 객체로 `StubURLSessionDataTask` 를 구현하다가 경고를 마주하게 되었다.

```swift
class StubURLSessionDataTask: URLSessionDataTask {
    var dummyData: DummyData?

    // init 부분에서 에러가 났다.
    init(dummy: DummyData?, completionHandler: DataTaskCompletionHandler?) {
        self.dummyData = dummy
        self.dummyData?.completionHandler = completionHandler
    }

    override func resume() {
        dummyData?.completion()
    }
}
```

> 'init()' was deprecated in iOS 13.0: Please use -[NSURLSession dataTaskWithRequest:] or other NSURLSession methods to create instances
> 
- `이유` URLSessionDataTask `init()`이 IOS13 이후에 deprecatede되었기 때문이다. 해당 경고를 없애고 싶어서 구글링을 하다가 `URLProtocol`을 발견하게 되었다.
- `해결` URLProtocol을 상속받은 MockURLProtocol을 만들어서 URLSession configuration을 구성하는 방법으로 문제를 해결하고 기존에 만들었던 StubURLSessionDataTask, DummyData, MockSession 타입은 더이상 사용하지 않게되어 모두 삭제해주었다.
    - `URLProtocol`이란?
        - URL 데이터 로딩을 다루는 추상클래스
    - URLProtocol은 URLProtocolClient 프로토콜을 통해 네트워크 진행 상황을 전달한다.
    - 테스트 번들에서 MockURLProtocol 클래스를 만들고 메소드를 재정의 해준다.
    - 로드를 할 때 설정한 후 전달할 Data, Error, Response를 딕셔너리로 설정해준다.
        - 이 값은 URLProtocol에 연결하여 설정값을 세팅해주기 위한 값이 된다.
    - Unit Test를 위해 상속받아서 오버라이드 함으로써 커스텀 하여 Mock 객체를 새롭게 만들 수 있다.
        - 기존처럼 외부 네트워크에 요청을 직접 보내는 동작이 아니라, 요청을 가로채서 원하는 응답을 반환하게 끔 커스텀 하는 작업이다.
        - 즉 원래 같이 웹 서버에서 데이터를 불러오는 과정이 아니고, 내가 설정한 값(data, response)을 그대로 반환하게 만들어 주는 과정인 것이다.


</div>
</details>

<details>
<summary>2. multipart form-data 안에 이미지와 JSON을 같이 넣는 방법</summary>
<div markdown="1">

### 2. multipart form-data 안에 이미지와 JSON을 같이 넣는 방법

- `상황` JSON은 인코딩해서 바디에 추가해주면 되지만, `multipart form-data`의 경우 양식이 달랐다.
- `이유`  아래 양식에 맞춰서 JSON과 이미지파일을 변환해서 바디에 넣어주기 위해서 `multipart form-data`으로 `body`에 파일을 실어보는 작업을 찾아보았다.
    
    ```swift
    POST /test.html HTTP/1.1 // \r\n
    Host: example.org // \r\n
    Content-Type: multipart/form-data;boundary="boundary" // \r\n
     // \r\n
    --boundary // \r\n
    Content-Disposition: form-data; name="field1" // \r\n
    // \r\n
    value1 // \r\n
    --boundary // \r\n
    Content-Disposition: form-data; name="field2"; filename="example.txt" // \r\n
     // \r\n
    value2 // \r\n
    --boundary-- // \r\n
    ```
    
    - HTTP 통신 규격을 확인해서 JSON파일과 Image파일을 바디에 추가하게 코드를 짜야했다.
        - Content-Type이 multipart form-data로 지정되어 있어야한다.
        - 전송되는 파일 데이터의 구분자로 boundary에 지정되어있는 문자열을 이용한다.
        - 마지막에는 boundary 양옆에 `--` 를 붙여서 바디의 끝을 알린다.
        - header와 header를 구분하기 위해 개행문자를 추가한다. `\r\n`
        - header와 body를 구분하기 위해 개행문자 2개를 추가한다. `\r\n\r\n`
        - body에 포함되어있는 file data를 구분하기 위해 boundary를 넣어준다.
- `해결` 위에서 정리한 양식대로 바디를 추가하도록 코드를 작성하였다.


</div>
</details>


## 1-4 배운 개념

- `multipart/form-data`
- API문서 읽는 방법
- 파싱한 JSON 데이터와 매핑할 모델 설계
    - `CodingKeys` 프로토콜의 활용
- URL Session을 활용한 서버와의 통신
    - `URLRequest`를 설정하는 방법
    - Testable한 네트워크 코드 작성하기
        - 네트워크 상황과 무관한 네트워킹 데이터 타입의 단위 테스트(Unit Test)

## 1-5 PR 후 개선사항

- 테스트 코드에 중복되는 부분을 개선
    - 빠진 주석 및 줄바꿈을 수정
- Image의 프로퍼티 네이밍을 명확하게 수정
- 하드코딩 되어있는 문자열을 따로 enum 타입으로 빼주어 개선
- 에러의 네이밍을 명확하게 개선
- Parser, Parsable의 네이밍을 JSON을 덧붙혀 명확하게 개선
- 접근제어가 붙어있지 않은 프로퍼티에 접근제어를 추가
- Address의 네이밍을 명확하게 개선 (APIAddress)

[![top](https://img.shields.io/badge/top-%23000000.svg?&amp;style=for-the-badge&amp;logo=Acclaim&amp;logoColor=white&amp;)](#목차-1)


# STEP 2 : 상품 목록 화면 구현

상품목록을 볼 수 있는 화면을 구현합니다.

## 2-1 고민했던 것

- `CollectionView` 하나로 Cell 두개를 활용하여 화면을 전환하기
    - Custom Cell을 구현하고, 두개의 레이아웃을 만들어 셀만 바꿔주는 방식으로 목록화면 구성
    - `FlowLayout`을 활용하여 Cell의 레이아웃을 구성
    - 서버에서 상품 목록을 불러오는 부분과 뷰를 그리는 부분 비동기 처리 구현
- CollectionView cell 각각 xib로 구현
    - `CollectionView`의 `GridCell`, `ListCell`을 각각 xib파일을 생성하여 storyboard로 구현하였고 두개의 xib에 대한 코드는 `ProductCell` 하나의 cell로 구성
- Network를 통해 data를 가져와 `CollectionView`를 구성
    - API의 Data를 가져오기 위해 productList Search하는 `request` 생성하여 `networkManager`의 `fetch()`로 network를 진행하였고 가져온 `data`로  `collectionViewload`하였다.
        
        ```swift
        let request = networkManager.requestListSearch(page: 1, itemsPerPage: 10) else {
        ...        
        networkManager.fetch(request: request, decodingType: Products.self) { result in
            switch result {
                case .success(let products):
                   self.productList = products.pages
                   self.collectionViewLoad()
                ...
        ```
        
- `CollectionView`를 재구성하는 경우 `reloadData()` 사용
    - `SegmentControl`을 이용해 `flowlayout`을 변경하는 경우  `CollectionView`를 재구성하기 위해 reloadData를 사용하였다.
        
        ```swift
        // list -> gird, grid -> list로 변경
        @IBAction private func switchSegmentedControl(_ sender: UISegmentedControl) {
                switch sender.selectedSegmentIndex {
                case 0:
                    currentCellIdentifier = ProductCell.listIdentifier
                    collectionView.setUpListFlowLayout()
                    collectionView.scrollToTop()
                    collectionView.reloadData()
        ```
        
- alert을 이용한 `Error Handling`
    - OpenMarket app에서 발생한 error는 alert 창을 띄워 error를 나타내었다.
    - `localizedError` 프로토콜의 `errorDescription`을 이용하여 description을 정의하였고 `error.localizedDescription`으로 error Message를 출력하도록 에러처리.
- 상품등록 버튼 Segue
    - HIG를 참고하여 상품등록 버튼을 눌렀을 때 `Navigation` 형태가 아니라 `Modal`로 띄우도록 구성
    - Navigation Bar를 활용하여 취소 버튼을 구성

## 2-2 의문점

- collectionview의 flowlayout을 변경할 때 `AutoLayout 충돌 관련 경고`가 뜨는데, 해결 방법을 모르겠다.
- `SegmentControl`을 활용하여 List나 Grid를 전환할 때 생기는 약간의 딜레이의 원인을 모르겠다.

## 2-3 Trouble Shooting

### 1. Segument Control을 이용하여 화면전환 시 스크롤 위치가 정상적이지 않은 경우

![https://i.imgur.com/DRtK0Xs.gif](https://i.imgur.com/DRtK0Xs.gif)

- `상황`  FlowLayout을 활용하여 화면을 전환할 때, 스크롤이 상단에 위치하는게 아니라 제멋대로인 위치에 가있는 현상이 발생했다.
- `이유` 레이아웃이 서로 다르기 때문에 스크롤의 좌표도 다른 것으로 추측이 되었다.
- `해결` 따라서 이 부분을 화면을 전환할 때 스크롤의 위치를 상단에 위치하게 설정해주니 해결되었다.
    
    ```swift
    extension UIScrollView {
        func scrollToTop() {
            let topOffset = CGPoint(x: 0, y: -contentInset.top)
            setContentOffset(topOffset, animated: false)
        }
    }
    ```
    

## 2-4 배운 개념

- `UICollectionView`  `UICollectionViewFlowLayout`
- `Networking`을 통한 뷰에 대한 비동기 처리
- `reloadData`
- `Xib File`
- `UISegmentedControl`
- `UIActivityIndicatorView`

## 2-5 PR 후 개선사항

- Asset에 등록되어있는 이미지 설정값 수정
- 전반적인 네이밍 수정
- 삼항연산자로 조건문 개선
- 빠져있는 접근제어 추가
- 동적으로 레이아웃을 잡을 수 있도록 **UICollectionViewDelegateFlowLayout**을 채택
    - 가로모드, 세로모드에서도 레이아웃이 뭉개지지 않도록 개선


[![top](https://img.shields.io/badge/top-%23000000.svg?&amp;style=for-the-badge&amp;logo=Acclaim&amp;logoColor=white&amp;)](#목차-1)



# STEP Bonus : 로컬 캐시 구현

서버에서 받은 데이터를 로컬에 캐시합니다.

## 3-1 고민했던 것

- `Pagination`
    - 스크롤이 하단에 가까워지면 다음 페이지를 로드하도록 구성
    - `scrollViewDidScroll()`를 이용하여 구현
- `Cache`
    - 앱이 실행하는 동안 캐시를 가지고 있을 수 있도록 싱글톤 패턴으로 ImageManager 타입을 생성
    - Cell에서 URL로 이미지를 가져오던 부분을 캐싱처리를 하도록 구성
        
        ```swift
        if let cachedImage = ImageManager.shared.loadCachedData(for: url) {
            productImageView.image = cachedImage
        } else {
            ImageManager.shared.downloadImage(with: url) { image in
            ImageManager.shared.setCacheData(of: image, for: url)
            self.productImageView.image = image
            }
        }
        ```
        

## 3-2 의문점

- 스크롤 시 yOffset을 비정상적으로 카운트가 되는 부분이 문제여서 아직 풀리지 않았는데, 해당 부분을 그냥 넘어가도 되는건지[?] 약간의 찝찝함이 남는다.

## 3-3 Trouble Shooting

### 1. 스크롤 하는 현재 위치가 비정상적으로 카운트되는 현상

- 항상 뜨는 에러는 아니고, 간헐적으로 뜨는 에러다. 스크롤을 하단까지 했을 때 디코딩에 실패하는 경우가 있습니다. 디버깅을 해보니 결과는 아래와 같다.
- ![](https://i.imgur.com/jotGTB4.png)
- ![](https://i.imgur.com/YQuHS96.png)
- ![](https://i.imgur.com/cm6J1vD.png)
- 뷰컨트롤러 쪽에서 네트워크 매니저의 `fetch` 메소드를 사용하는 쪽에서 에러가 나는 것 같은데, 네트워크에서는 `success`로 데이터를 가져오긴 했으나 조회를 해보면 데이터가 비어있는 것을 확인할 수 있었다.
- ![](https://i.imgur.com/rHL8Ebf.png)
- Response를 확인해보면 `204`코드로 응답하고 있다.
- ![](https://i.imgur.com/EiaoQJ1.png)
- 스크롤 하는 부분에 중단점을 찍고 확인해보니 `currentPage`가 `104`가 되어있는 것도 확인되었다. 저 조건문이라면 104가 될 수가 없는데.. 어느순간 스크롤을 계산하는 부분(`yOffset`)에서 에러가 발생해서 비정상적으로 currentPage가 올라가는 것 같다.

```swift
if heightRemainBottomHeight < frameHeight ,
   let page = page, page.hasNext, page.pageNumber == currentPage {
    currentPage += 1
    self.requestProducts()
}
```

- 따라서 위와 같이 조건문을 하나 더 추가해서 안전하게 currentPage를 더해줄 수 있도록 임시방편으로 수정해주었다.

## 3-4 배운 개념

- `UIScrollViewDelegate`를 이용한 `pagination` 구현
- `Cache`의 대한 개념
    - `Caching`의 범위

## 3-5 PR 후 개선사항

- 코딩 컨벤션에 맞추어 메소드의 줄바꿈을 수정
- 사용하지 않는 타입을 삭제
- 네이밍 개선
- API 문서를 다시 검토하여 타입을 개선
- 중복되는 코드를 제거하여 리팩토링

[![top](https://img.shields.io/badge/top-%23000000.svg?&amp;style=for-the-badge&amp;logo=Acclaim&amp;logoColor=white&amp;)](#목차-1)


# STEP 3 : 상품 등록/수정 화면 구현

상품등록, 상품수정 화면을 구현합니다.

## 4-1 고민했던 것

### 1. 상품등록 화면 구현시 이미지를 추가하는 기능

- CollectionView의 Cell과 Header를 활용하여 View를 구성
- 이미지가 5장이 채워졌을 때 경고얼럿을 띄우도록 구현
- 사용자 입장에서 몇개의 이미지가 추가되었는지 시각적으로 확인할 수 있도록 Label 추가 구현
- 이미지 파일 용량이 300KB 이상일 경우 `UIGraphicsImageRenderer`를 이용하여 20퍼센트씩 resize

### 2. 입력 검증

- 요구사항과 API 문서를 참고하여 사용자가 제대로 입력하지 않은 부분이 있다면 얼럿을 통해 어떤 부분이 잘못되었는지 알려줄 수 있도록 구현

### 3. RegisterViewController을 재활용

- 화면 전환 시 상품 등록, 상품 수정 flag를 전달하여 해당 flag에 대한 분기처리를 통해서 ViewController를 재활용

### 4. DataSource를 ViewController와 분리

- 점점 커져가는 ViewController를 다이어트 시키기 위해 DataSource를 따로 타입으로 빼두어 ViewController에 주입시키도록 구현

### 5. 키보드가 콘텐츠를 가리는 현상 해결

- ScrollView와 NotificationCenter 두가지를 활용
- ScrollView의 `contentInset`을 `keyboardFrame 사이즈의 높이`만큼 버퍼를 추가하여 스크롤뷰를 확장하므로써 키보드 가림현상을 해결
    - `scrollIndicatorInsets`도 같이 변경해주도록 하였음.
- TextView에서 줄바꿈을 하면서 커서가 내려갈 때 따라갈 수 있도록, ScrollEnabled 기능을 false로 비활성화
- 이후 오토레이아웃으로 TextView의 높이가 늘 고정되어있는 것이 아니라 늘어날 수도 있도록 `priority`를 조절.
    - 텍스트뷰가 안에 Text가 길어질 수록 높이가 늘어나고, 그에 따라 스크롤도 자동으로 내려온다.

### 6. View와 Controller간의 소통

- ImageHeaderView와 RegisterViewController, 각각의 ViewController들 사이에 소통을 위해서 notification을 사용

### 7. 데이터가 변화할 때 Update하는 기능

- 상품 등록, 상품 수정 시 각 ViewController에 notification post하여 update 이벤트를 전달
- 이벤트 전달 시 API에 `request`하여 데이터를 업데이트
- MainViewController의 CollectionView를 아래로 쓸어내렸을 때 새 데이터를 받아오는 기능 추가 구현

### 8. 상품을 수정할 때 비밀번호를 확인하는 작업

- 상품 등록시에는 API 명세를 따르기 위해 비밀번호가 이미 세팅된 상태로 등록이 되지만, 상품 수정시에는 수정하기 전 비밀번호를 먼저 확인하고, 비밀번호가 맞다면 수정할 수 있도록 구현

## 4-2 의문점

- Delegate vs Notification
    
    `view`와 `Controller` 사이에 소통하는 방식으로 `delegate pattern`을 사용하였는데 `DataSource` 파일을 분리하면서 `DataSource`에서 `delegate` 객체를 이용하는 것에 한계를 느껴 `Notificationcenter`를 사용
    
- 키보드를 내리는 방법 중 `Recognizer`방법을 사용하면 CollectionView의 `Delegate` 메소드 호출이 먹통이 되는데 어떤 문제인지 모르겠다.
    
    ```swift
    // Recognizer를 활용해서 뷰컨을 터치하면 키보드 사라지는 메소드
    func hideKeyboard() {
        let tap = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    ```
    
- cell을 dequeueReusable 해주는 구간에서 productList를 통해 셀을 구성하고 있는데, MainViewController을 업데이트 할 때 간헐적으로 `out of range` 에러가 나는데, 정확한 에러 원인을 찾지 못했다.
- 점점 비대해지는 ViewController를 어떻게 다이어트 시켜야하는지...

## 4-3 Trouble Shooting

<details>
<summary>키보드가 콘텐츠를 가리지 않도록 하는 방법</summary>
<div markdown="1">

### 1. 키보드가 콘텐츠를 가리지 않도록 하는 방법

- `문제`  NotificationCenter를 활용하여 키보드프레임을 계산하고, 그에 맞게 ScrollView의 contentInset을 조정해주어 콘텐츠를 가리지 않도록 해결을 해보았다.
    - 그러나 UITextField 경우에는 제대로 동작하였지만 `UITextView`의 경우에는 제대로 동작하지 않았다.
    - ![https://i.imgur.com/4LOEfyc.gif](https://i.imgur.com/4LOEfyc.gif)
- `이유`  구글링을 해본 결과 TextView의 경우 스크롤 기능을 없앤 후에 높이를 고정시켜야 이러한 문제를 해결할 수 있다고 나와있었다. 이해한 바로는 TextView의 높이가 계속 늘어날 수 있고, 스크롤이 기능이 가능한 상태에서는 바깥에 깔려있는 스크롤뷰 입장에서는 뷰의 높이가 변하지 않으니 스크롤의 좌표도 그대로인 것이라고 이해가 되었다.
- `해결`  따라서 UITextView의 `스크롤 기능`을 비활성화한 후, 높이가 늘 고정되어있는 것이 아니라 내부의 Text에 따라 늘어날 수도 있도록 오토레이아웃 `우선순위`를 조정해주었다.


</div>
</details>


<details>
<summary>CollectionView를 Refreshing 할 때 발생되는 index out of range</summary>
<div markdown="1">

### 2. CollectionView를 Refreshing 할 때 발생되는 index out of range

- `문제` cell을 dequeueReusable 해주는 구간에서 productList를 통해 셀을 구성하고 있는데, MainViewController에서 `UIRefreshControl`를 통해 업데이트 할 때 간헐적으로 `out of range` 에러가 나는데 디버깅을 해보았다.
- `이유` dequeueReusable 해주는 구간과 `updataMainView()` 메소드 내부를 print를 해보면서 디버깅을 해본 결과, CollectionView의 cellForItemAt 메소드가 단순 드래그를 할 때도 호출하고 있었다.
- 따라서 위에서 아래로 쓸어내리는 과정에서 `cellForItemAt`의 호출과 `updataMainView` 호출 시점이 간헐적으로 뒤바뀌는 시점이 생겨서 이러한 에러가 났던 것이라고 이해했다.
- `해결` 동기적으로 메소드를 호출시키도록 해야하나 했었지만, 이 부분은 비동기적으로 처리하여 해결하였다.
    - `updataMainView`가 호출될 때 DispatchQueue.global()로 작업을 보내도록 하였다. 이렇게 하면 메인쓰레드가 아닌 다른 쓰레드에서 `updataMainView`의 작업을 처리하고, 그 후에 CollectionView의 `cellForItemAt` 메소드를 호출하는 로직으로 변경된다.


</div>
</details>


## 4-4 배운 개념

- 사용자 친화적인 `UI/UX` 구현
- `URLSession`을 활용한 multipart-form 요청 전송
- `UIImagePickerController`를 활용하여 사용자 앨범에 접근하는 방법
- `UIGraphicsImageRenderer` 를 이미지를 랜더링 하여 압축하는 방법
- `UICollectionReusableView`를 사용하는 방법
- `UIScrollView`를 활용하여 키보드가 컨텐츠를 가리는 부분을 해결하는 방법
- `UITextField`를 가지고 있는 `UIAlertController` 활용
- `UIRefreshControl`를 활용하는 방법

## 4-5 PR 후 개선사항

- AlertConstant를 `제거`하고 `UIViewController+extension` 부분 전체적으로 개선
- CollectionView에서 `refreshing`할 때 `index out of range` 에러나는 부분 비동기적으로 처리하여 해결
- 네이밍 부분 전체적으로 개선
- 앨범에 접근할 때 보여지는 description을 수정하여 개선
- HIG를 참고하여 alert, ActionSheet의 `버튼 순서를 변경`하여 개선
- DetailViewController `메소드 순서`를 개선
- 이미지 삭제시 'x'버튼을 클릭했을 때 삭제되도록 수정하여 개선
- 셀을 선택했을 때 변화가 발생하도록 `selectedBackgroundView` 설정

[![top](https://img.shields.io/badge/top-%23000000.svg?&amp;style=for-the-badge&amp;logo=Acclaim&amp;logoColor=white&amp;)](#목차-1)

# STEP 4 : 상품 상세화면 구현

상품의 상세내용을 확인할 수 있는 화면을 구현합니다

## 5-1 고민했던 것

### 1. 에러처리

- 사용자가 볼 필요가 없는 에러의 경우(네트워크 에러) 얼럿을 띄우는 대신 print를 호출하도록 하여, 에러처리를 해주었다.

### 2. Custom Font에도 Dynamic Type을 적용

- UIFont가 제공하는 preferredFont를 사용하면 따로 굵기를 지정할 수 없고, 지정된 font만 사용해야한다. 반대로 systemFont를 사용한다면 Dynamic Type이 동작하지 않는다.
    - extension을 통해서 굵기를 지정해도 Dynamic Type을 지원하는 메소드를 구현하여 이 문제를 해결.

### 3. 이미지 상세보기 시 보고있던 이미지가 그대로 넘어가도록 구현

- 다른 마켓앱을 살펴보면 상세보기로 넘어갈 때 보고있던 이미지를 그대로 넘겨서 상세보기 화면으로 전환되는 것을 확인할 수 있다. 사용자 입장에서도 보고있던 이미지를 그대로 상세보기로 보는 것이 바람직하다고 판단되어 해당 기능을 구현하였다.
    
    ```swift
    DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
        let indexPath = IndexPath(item: self.currentPage, section: 0)
        self.collectionView.scrollToItem(
            at: indexPath,
            at: [.centeredHorizontally, .centeredVertically],
            animated: false
         )
    }
    ```
    

### 4. HIG를 참고하여 Action Sheet를 설계

> **Make destructive choices prominent.** Use red for buttons that perform destructive or dangerous actions, and display these buttons at the top of an action sheet.
> 
- 이 부분을 참고하여, 요구사항처럼 삭제 버튼을 아래에 위치해있는게 아니라 상단에 위치하도록 개선하였다.

### 5. CollectionView, PageControl을 이용한 이미지 Paging

- 상세페이지화면에서 이미지를 표시할 때 CollectionView의 isPaging과 가로 스크롤을 통해서 paging을 구현하였다.
- pageControl을 이용하여 현재 페이지의 위치를 나타내고 PageControl의 dot을 탭하여도 페이지가 전환되는 기능을 구현하였다.

## 5-2 의문점

- `DetailViewController` → `ImageDetailViewController` 로 전환할 때 viewDidLoad에서 collectionView.`scrollToItem`을 호출 시 제대로 적용되지 않아서 DispatchQueue.main.`asyncAfter`를 활용했는데, 적절한지 잘 모르겠다.
- 네트워킹 하는 부분이 마치 산맥..처럼 공포의 들여쓰기가 생겨났는데, 이러한 부분을 어떻게 더 개선할 수 있을지 더이상 떠오르지가 않는다.
- CollectionView에 FlowLayout을 따로 코드로 대입해주지 않으면, UICollectionViewDelegateFlowLayout를 채택하여 레이아웃을 설정해주어도 레이아웃이 적용되지 않는데, 왜그런걸까?
- ScrollView를 활용해서 Zoom을 구현하였지만, 디바이스 전체 크기에 맞춰서 Scale을 설정하는 방법을 모르겠다.
    - 이미지가 디바이스 크기보다 커지지 않도록 하고싶다...

## 5-3 Trouble Shooting

### 1. 상세페이지로 넘어갈때 이미지가 나타나지 않는 문제

- `문제` 메인페이지에서 상세페이지로 넘어갈때 이미지가 보이지 않는 현상이 나타났다.
- `이유` 이미지를 네트워킹하는 속도보다 화면이 전환되는 시점이 빨라서 나타나는 문제였다.
- `해결` DispatchGroup을 이용하여 네트워킹하는 코드 내 completion 탈출 클로저가 모두 끝난 시점에 View를 띄워주도록 하였다.
    
    ```swift
    dispatchGroup.enter()
    ImageManager.shared.downloadImage(with: newImage.url) { image in
        ImageManager.shared.setCacheData(of: image, for: newImage.url)
        self.images.append(image)
        dispatchGroup.leave()
    }
    
    dispatchGroup.notify(queue: .main) {
        DispatchQueue.main.async {
            // view 
            ...
        }
    }
    ```
    

### 2. CollectionView로 Paging시 cell이 밀리는 문제

- `문제`  CollectionView의 isPagingEnabled을 true로 주면 아래 예시와 같이 스크롤 했을 때 cell이 조금씩 밀리는 현상이 나타났다.
    
    ![Untitled](https://camo.githubusercontent.com/a807e6deef77c57e0664311f0f555c6f68ead4d7c87523ff92dc05c65c30b3dd/68747470733a2f2f692e696d6775722e636f6d2f7459304e4434632e676966)
    
- `이유` CollectionView의 경우 minimumLineSpacing이 기본적으로 값(10.0)이 들어가있다. 해당 값 때문에 스크롤 시 밀림현상이 있었던 것이였다.
- `해결` minimumLineSpacing을 0으로 설정해주니 스크롤 시 cell이 조금씩 밀리던 현상이 해결되었다.
    
    ![Untitled](https://camo.githubusercontent.com/5f5f51383232167e5cde9f87bddc632f9260f8d64031a9175a3328afe17967d9/68747470733a2f2f692e696d6775722e636f6d2f77737a624a31492e676966)
    

### 3. Cell이 선택되었다는 표시가 안나는 문제

- `문제` UITableView같은 경우에는 기본적으로 seleted 했을 때, 회색 배경이 사라지지 않아서 delegate 메소드를 활용하여 deselect를 해주어야 배경색이 다시 원래대로 돌아왔었다.
- `이유` 하지만 UICollectionView 같은 경우에는 아무것도 설정되어있지 않기 때문에 이 부분을 직접 설정을 해주어야 한다.
- `해결`  셀을 초기화할 때 selectedBackgroundView를 지정해주고, backgroundColor를 입혀준다.
    
    ```swift
    cell.selectedBackgroundView = UIView(frame: self.bounds)
    cell.selectedBackgroundView?.backgroundColor = .systemGray5
    ```
    
    ![https://camo.githubusercontent.com/025483b76ced080acf668db52a4b733a66eafafdf1faacd13e4989ccdfe7c207/68747470733a2f2f692e696d6775722e636f6d2f6a67736c7062672e676966](https://camo.githubusercontent.com/025483b76ced080acf668db52a4b733a66eafafdf1faacd13e4989ccdfe7c207/68747470733a2f2f692e696d6775722e636f6d2f6a67736c7062672e676966)
    
- 하지만 위와 같이 배경색이 바뀐 채로 남아있다. 따라서 Delegate 메소드 중 didSelectItemAt를 구현하여 deselectItem를 호출해서 셀 선택을 해제시켜주어야 한다.
    
    ```swift
    // UICollectionViewDelegate...
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
    }
    ```
    
    ![https://camo.githubusercontent.com/6f1c32140bce0c850ef827cbfc8a2659e9f36f24764b853cedf99fc84d08d67c/68747470733a2f2f692e696d6775722e636f6d2f333169746748432e676966](https://camo.githubusercontent.com/6f1c32140bce0c850ef827cbfc8a2659e9f36f24764b853cedf99fc84d08d67c/68747470733a2f2f692e696d6775722e636f6d2f333169746748432e676966)
    
    - 이렇게 하면 정상적으로 셀을 선택했을 때, 선택되었다는 효과가 일어나면서 화면전환이 되는 것을 확인할 수 있다.

## 5-4 배운 개념

- UIPageControl을 활용하는 방법
- GestureRecognizer를 통해 특정 터치이벤트를 처리하는 방법
- UIScrollView의 Zoom 기능을 활용하는 방법
- UIFontMetrics를 활용하여 Custom Font에도 Dynamic Type을 적용해보는 방법
- UICollectionView를 활용해서 Paging을 구현하는 방법
- UIAlertController의 텍스트 필드를 추가하여 활용하는 방법
    - Handler 활용

[![top](https://img.shields.io/badge/top-%23000000.svg?&amp;style=for-the-badge&amp;logo=Acclaim&amp;logoColor=white&amp;)](#목차-1)


</div>
</details>

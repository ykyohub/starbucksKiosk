## 내일배움캠프 6팀 스타벅스 키오스크 앱 
### 6팀 팀원


- [김영현](https://github.com/y0unghyun)   
  ----
  #### 카테고리 바
  - `UISegmentedControl` 요소를 사용해 상단 메뉴 카테고리 바 구성
  - 화면 중앙 `UICollectionView`에 적절한 메뉴를 전달하기 위해서 `collectionsToDisplay` 빈 배열 생성
  - `UISegmentedControl`에 적힌 메뉴를 눌렀을 때 변화하는 `.selectedSegmentIndex`값을 사용해서 `collectionsToDisplay` 배열에 미리 선언된 적절한 메뉴 전달
  - 메뉴 변경 시점에서 `UICollectionView.reloadData()` 진행하여 화면 중단에 적절한 메뉴를 보여줌

- [김유경](https://github.com/kyk70009/Project)    
  ----
  #### 메뉴 화면
  - 
  - 
  - 
  - 
<br/><br/>

- [윤규호](https://github.com/ykyohub)
  ----
  #### 주문 내역 화면
  - 주문 내역 Table View & Table View Cell 구현, Collection View 에서 처리한 장바구니에 추가된 항목을 테이블 뷰에 출력.
  - 장바구니에 담은 항목의 이름, 가격, 수량을 각각의 UILabel 에 setCell 메서드를 통해 테이블 뷰 셀 설정
  - 수량 감소 및 증가 기능 UIButton 기능 구현. orderTableViewDecreaseButton & orderTableViewIncreaseButton 클로저를 통해 수량값 조절 후
    전체 수량 및 전체 가격 값 초기화해서 stackView totalPrice, totalQuantity UILabel 업데이트
  - 셀 삭제 기능 UIButton 기능 구현. orderTableViewDeleteButton 클로저를 통해 컨트롤.
    버튼 클릭 시 셀 내부 값 삭제 & stackView 업데이트 & customer.cart 값 업데이트(장바구니)
<br/><br/>

- [김가빈](https://github.com/BINDUNGLIFE)   
  ----
  #### 결제하기, 취소하기 
  - **결제 버튼 (payButtonTapped)** <br>
    - 주문 금액(customer.totalPrice)이 0일 경우, "결제할 항목이 없습니다"라는 알림을 표시 <br>
    - 주문 금액이 0이 아니면, 사용자에게 결제할 금액을 보여주고 "결제/취소" 옵션을 제공하는 알림을 표시 
  - **결제 옵션 제공(presentPaymentOptions)** <br>
    - 사용자에게 "카드결제", "쿠폰결제", "간편결제" 결제 방법을 선택할 수 있는 액션 시트 제공 <br>
    - 각 옵션을 선택할 경우 completeOrder 메서드를 호출 
  - **주문 완료 처리(completeOrder)** <br>
    - 주문이 완료되었다는 메시지 알림을 표시 <br>
    - 확인 버튼을 누르면, 주문 내역을 초기화 후 총 금액과 수량을 업데이트
  - **주문 취소 (clearOrderTapped)** <br>
    - 주문 금액이 0일 경우 "취소할 항목이 없습니다"라는 알림을 표시 <br>
    - 주문 금액이 0이 아닐 경우, "전체 삭제" 확인 알림을 표시 후 주문 내역을 초기화

<br/><br/>



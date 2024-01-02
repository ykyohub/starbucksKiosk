## 내일배움캠프 6팀 스타벅스 키오스크 앱 
### 6팀 팀원


- [김영현](https://github.com/y0unghyun)   
  ----
  #### 카테고리 바
  - 
  - 
  - 
  - 

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
  - 
  - 
  - 
<br/><br/>

- [김가빈](https://github.com/BINDUNGLIFE)   
  ----
  #### 결제하기, 취소하기 
  - 결제 버튼 (payButtonTapped) ///
    주문 금액(customer.totalPrice)이 0일 경우, "결제할 항목이 없습니다"라는 알림을 표시
    주문 금액이 0이 아니면, 사용자에게 결제할 금액을 보여주고 "결제/취소" 옵션을 제공하는 알림을 표시
  - 결제 옵션 제공(presentPaymentOptions)
    사용자에게 "카드결제", "쿠폰결제", "간편결제" 결제 방법을 선택할 수 있는 액션 시트 제공
    각 옵션을 선택할 경우 completeOrder 메서드를 호출
  - 주문 완료 처리(completeOrder):
   주문이 완료되었다는 메시지 알림을 표시
   확인 버튼을 누르면, 주문 내역을 초기화 후 총 금액과 수량을 업데이트
  - 주문 취소 (clearOrderTapped):
   주문 금액이 0일 경우 "취소할 항목이 없습니다"라는 알림을 표시
   주문 금액이 0이 아닐 경우, "전체 삭제" 확인 알림을 표시 후 주문 내역을 초기화

<br/><br/>



내일배움캠프 iOS 2기 6팀
스타벅스 키오스크 프로젝트

---
### 김가빈 
1. 결제 버튼 (payButtonTapped) 
 사용자가 결제 버튼을 탭할 때, 주문 내역이 있는지 확인하고, 없다면 경고 메시지를 표시. 주문이 있을 경우 결제 확인을 요청하는 알림을 표시
 @IBAction func payButtonTapped(_ sender: UIButton) {
    if customer.totalPrice == 0 {
        // 알림 표시: 결제할 항목 없음
    } else {
        // 결제 확인 알림 표시
    }
 }

2. 결제 옵션 (presentPaymentOptions) 
 다양한 결제 방법(카드결제, 쿠폰결제, 간편결제)을 선택할 수 있는 액션 시트를 제공
func presentPaymentOptions() {
    // 결제 방법 선택 액션 시트 표시
}

3. 주문 완료 (completeOrder)
 결제 완료 시 주문 완료를 알리는 메시지 표시, 주문 내역을 초기화. 총 가격과 수량 업데이트
func completeOrder() {
    // 주문 완료 알림 표시 및 주문 내역 초기화
}

4. 주문 취소 (clearOrderTapped) 
 전체 주문 취소 옵션을 제공, 선택할 경우 주문 내역을 초기화 및 화면을 업데이트
@IBAction func clearOrderTapped(_ sender: UIButton) {
    if customer.totalPrice == 0 {
        // 알림 표시: 취소할 항목 없음
    } else {
        // 전체 삭제 확인 알림 표시
    }
}


//
//  TableViewExtension.swift
//  starbucksKiosk
//
//  Created by 영현 on 12/27/23.
//

import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customer.cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = OrderTableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell", for: indexPath) as! OrderTableViewCell
        
        // 셀 그리기
        cell.setCell(customer.cart[indexPath.row])
        
        // 셀 내부에 쓰레기통 버튼 눌렀을 때 기능 정의
        cell.orderDeleteButton = { [weak self] in
            self?.customer.cart.remove(at: indexPath.row)
            self?.OrderTableView.deleteRows(at: [indexPath], with: .left)
            self?.OrderTableView.reloadData()
            
            // 총 주문 가격과 수량 계산해서 보여주는 코드
            self?.customer.calculateTotal()
            self?.totalPriceLabel.text = String(self?.customer.totalPrice ?? 0) + "₩"
            self?.totalQuantityLabel.text = String(self?.customer.totalQuantity ?? 0) + "개"
        }

        // 셀 내부 스테퍼 눌렀을 때 기능 정의
        cell.orderStepper = { [weak self] value in
            self?.customer.cart[indexPath.row].number = value
            self?.OrderTableView.reloadData()
            
            // 총 주문 가격과 수량 계산해서 보여주는 코드
            self?.customer.calculateTotal()
            self?.totalPriceLabel.text = String(self?.customer.totalPrice ?? 0) + "₩"
            self?.totalQuantityLabel.text = String(self?.customer.totalQuantity ?? 0) + "개"
        }
        
//        cell.setStepperValue = { [weak self] in
//            return Int((self?.customer.cart[indexPath.row].number)!)
//        }
            
        cell.orderStepper = { [weak self] value in
            self?.customer.cart[indexPath.row].number = value
            print("현재 테이블 뷰 셀 넘버 : ",self?.customer.cart[indexPath.row].number ?? 0)
            
            self?.OrderTableView.reloadData()
            self?.customer.calculateTotal()
            print("total price : ",self?.customer.totalPrice ?? 0)
        }
        
        return cell
    }
}


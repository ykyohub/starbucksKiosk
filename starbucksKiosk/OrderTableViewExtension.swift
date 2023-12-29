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
        
        //감소 버튼 동작
        cell.decreaseButton = { [weak self] in
            if self?.customer.cart[indexPath.row].number != 0 {
                self?.customer.cart[indexPath.row].number -= 1
            }
            self?.OrderTableView.reloadData()
            self?.customer.calculateTotal()
            self?.totalPriceLabel.text = String(self?.customer.totalPrice ?? 0) + " 원"
            self?.totalQuantityLabel.text = String(self?.customer.totalQuantity ?? 0) + " 개"
        }
        
        //증가 버튼 동작
        cell.increaseButton = { [weak self] in
            self?.customer.cart[indexPath.row].number += 1
            self?.OrderTableView.reloadData()
            self?.customer.calculateTotal()
            self?.totalPriceLabel.text = String(self?.customer.totalPrice ?? 0) + " 원"
            self?.totalQuantityLabel.text = String(self?.customer.totalQuantity ?? 0) + " 개"
        }
        
        // 셀 내부에 쓰레기통 버튼 눌렀을 때 기능 정의
        cell.orderDeleteButton = { [weak self] in
            self?.customer.cart.remove(at: indexPath.row)
            self?.OrderTableView.deleteRows(at: [indexPath], with: .left)
            self?.OrderTableView.reloadData()
            
            // 총 주문 가격과 수량 계산해서 보여주는 코드
            self?.customer.calculateTotal()
            self?.totalPriceLabel.text = String(self?.customer.totalPrice ?? 0) + " 원"
            self?.totalQuantityLabel.text = String(self?.customer.totalQuantity ?? 0) + " 개"
        }
        
        return cell
    }
}


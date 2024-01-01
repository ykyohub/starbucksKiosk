//
//  TableViewExtension.swift
//  starbucksKiosk
//
//  Created by 영현 on 12/27/23.
//

import UIKit


// MARK: 주문 내역 TableView 구현
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customer.cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = OrderTableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell", for: indexPath) as! OrderTableViewCell
        
        // 고객 장바구니에 들어간 메뉴로 TableViewCell 구성
        cell.setCell(customer.cart[indexPath.row])
        
        // 주문내역 감소 버튼 동작
        cell.decreaseButton = { [weak self] in
            if self?.customer.cart[indexPath.row].number != 0 {
                self?.customer.cart[indexPath.row].number -= 1
            }
            self?.OrderTableView.reloadData()
            self?.customer.calculateTotal()
            self?.totalPriceLabel.text = String(self?.customer.totalPrice ?? 0) + " 원"
            self?.totalQuantityLabel.text = String(self?.customer.totalQuantity ?? 0) + " 개"
        }
        
        // 주문내역 증가 버튼 동작
        cell.increaseButton = { [weak self] in
            self?.customer.cart[indexPath.row].number += 1
            self?.OrderTableView.reloadData()
            self?.customer.calculateTotal()
            self?.totalPriceLabel.text = String(self?.customer.totalPrice ?? 0) + " 원"
            self?.totalQuantityLabel.text = String(self?.customer.totalQuantity ?? 0) + " 개"
        }
        
        // 셀 내부 쓰레기통 버튼 기능
        cell.orderDeleteButton = { [weak self] in
            self?.customer.cart.remove(at: indexPath.row)
            self?.OrderTableView.deleteRows(at: [indexPath], with: .left)
            self?.OrderTableView.reloadData()
            
            self?.customer.calculateTotal()
            self?.totalPriceLabel.text = String(self?.customer.totalPrice ?? 0) + " 원"
            self?.totalQuantityLabel.text = String(self?.customer.totalQuantity ?? 0) + " 개"
        }
        
        return cell
    }
}


//
//  CollectionViewExtension.swift
//  starbucksKiosk
//
//  Created by 영현 on 12/27/23.
//

import UIKit


// MARK: 메뉴 화면 CollectionView 구현
extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return collectionsToDisplay.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MenuCollectionView.dequeueReusableCell(withReuseIdentifier: "menuCollectionViewCell", for: indexPath) as! MenuCollectionViewCell
        
        cell.setCell(collectionsToDisplay[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let alert = UIAlertController(title: "주문 추가", message: "장바구니에 넣으시겠습니까?", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "추가", style: .default) { _ in
            let index = self.customer.cart.firstIndex(where: {$0.name.contains(self.collectionsToDisplay[indexPath.row].name)})
            
            if self.customer.cart.contains(where: { $0.name.contains(self.collectionsToDisplay[indexPath.row].name) }) {
                self.customer.cart[index!].number += 1
                
                self.customer.calculateTotal()
                self.totalPriceLabel.text = String(self.customer.totalPrice ) + " 원"
                self.totalQuantityLabel.text = String(self.customer.totalQuantity ) + " 개"
                
                self.OrderTableView.reloadData()
                self.reloadInputViews()
            } else {
                self.customer.cart.append(self.collectionsToDisplay[indexPath.row])
                
                self.customer.calculateTotal()
                self.totalPriceLabel.text = String(self.customer.totalPrice ) + " 원"
                self.totalQuantityLabel.text = String(self.customer.totalQuantity ) + " 개"
                
                self.OrderTableView.reloadData()
            }
        }
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        alert.addAction(okAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true)
    }
}

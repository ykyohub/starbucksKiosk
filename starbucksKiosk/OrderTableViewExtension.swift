//
//  TableViewExtension.swift
//  starbucksKiosk
//
//  Created by 영현 on 12/27/23.
//

import Foundation
import UIKit

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cart.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = OrderTableView.dequeueReusableCell(withIdentifier: "OrderTableViewCell", for: indexPath) as! OrderTableViewCell
        
        cell.setCell(cart[indexPath.row])
        
        cell.orderDeleteButton = { [weak self] in
            print(indexPath.row)
            self?.cart.remove(at: indexPath.row)
            self?.OrderTableView.deleteRows(at: [indexPath], with: .automatic)
            self?.OrderTableView.reloadData()
        }
        
        return cell
    }
}

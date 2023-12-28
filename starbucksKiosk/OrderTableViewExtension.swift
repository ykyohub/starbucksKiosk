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
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = OrderTableView.dequeueReusableCell(withIdentifier: "orderTableViewCell", for: indexPath)
        return cell
    }
}

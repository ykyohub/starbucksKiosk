//
//  DataModel.swift
//  starbucksKiosk
//
//  Created by 영현 on 12/26/23.
//

import Foundation

import Foundation
import UIKit

class Menu {
    let name: String
    let image: UIImage
    let price: Int
    var number: Int
    
    init(name: String, image: UIImage, price: Int, number: Int) {
        self.name = name
        self.image = image
        self.price = price
        self.number = number
    }
}

class Order {
    var menu: [Menu] // 메뉴와 메뉴 갯수
    lazy var totalPrice: Int = 0
    
    init(menu: [Menu], totalPrice: Int) {
        self.menu = menu
    }
    
    func calculateTotalPrice() {
        for `each` in self.menu {
            self.totalPrice += `each`.price * `each`.number
        }
    }
}

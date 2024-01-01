//
//  MenuCollectionViewCell.swift
//  starbucksKiosk
//
//  Created by 영현 on 12/28/23.
//

import UIKit


// MARK: 메뉴 화면 CollectionViewCell 클래스 정의
class MenuCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var menuImage: UIImageView!
    @IBOutlet weak var menuName: UILabel!
    
    var menu: Menu?
    
    func setCell(_ _menu: Menu) {
        menu = _menu
        
        self.menuImage.image = UIImage(named: _menu.image)
        self.menuName.text = _menu.name
        self.menuName.sizeToFit()
    }
}



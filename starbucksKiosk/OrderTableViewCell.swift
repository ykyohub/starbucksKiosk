//
//  OrderTableViewCell.swift
//  starbucksKiosk
//
//  Created by 영현 on 12/28/23.
//

import UIKit


// MARK: 주문 내역 화면의 TableViewCell 클래스 정의
class OrderTableViewCell: UITableViewCell {
    
    var orderDeleteButton: (() -> ())?
    var decreaseButton: (() -> ())?
    var increaseButton: (() -> ())?
    var orderChange: ((Int) -> ())?
    @IBOutlet weak var tableViewStepper: UIStepper!
    
    var menu: Menu?
    
    @IBOutlet weak var orderTableViewProductLabel: UILabel!
    @IBOutlet weak var orderTableViewPriceLabel: UILabel!
    @IBOutlet weak var orderTableViewCountLabel: UILabel!
    @IBOutlet weak var orderTableViewImage: UIImageView!
    
    @IBAction func tableViewStepper(_ sender: UIStepper) {
        print("스테퍼 동작, sender.value : ", sender.value)
        orderChange?(Int(sender.value))
    }
    @IBAction func orderTableViewDeleteButton(_ sender: UIButton){
        orderDeleteButton?()
    }

    
    func setCell(_ _menu: Menu){
        menu = _menu
        
        self.tableViewStepper.value = Double(_menu.number)
        print("setCell 메서드 실행, 스테퍼 벨류 : ", tableViewStepper.value)
        self.orderTableViewProductLabel.text = _menu.name
        self.orderTableViewPriceLabel.text = String(_menu.price) + " 원"
        self.orderTableViewCountLabel.text = String(_menu.number)
        self.orderTableViewImage.image = UIImage(named: _menu.image)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        print("prepareForReuse 메서드 실행됨")
        self.tableViewStepper.value = 0
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}

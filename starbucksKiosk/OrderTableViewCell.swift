//
//  OrderTableViewCell.swift
//  starbucksKiosk
//
//  Created by 영현 on 12/28/23.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    
    var orderDeleteButton: (() -> ())?
    var menu: Menu?
    
    @IBOutlet weak var orderTableViewStepper: UIStepper!
    @IBOutlet weak var orderTableViewProductLabel: UILabel!
    @IBOutlet weak var orderTableViewPriceLabel: UILabel!
    @IBOutlet weak var orderTableViewCountLabel: UILabel!
    @IBOutlet weak var orderTableViewImage: UIImageView!
    
    
    @IBAction func orderTableViewStepper(_ sender: UIStepper) {
        orderTableViewCountLabel.text = String(String(Int(round(sender.value))))
    }
    
    @IBAction func orderTableViewDeleteButton(_ sender: UIButton) {
        orderDeleteButton?()
    }
    
    func setCell(_ _menu: Menu){
        menu = _menu
        
        self.orderTableViewProductLabel.text = _menu.name
        self.orderTableViewPriceLabel.text = String(_menu.price)
        self.orderTableViewCountLabel.text = String(_menu.number)
        self.orderTableViewImage.image = UIImage(named: _menu.image)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

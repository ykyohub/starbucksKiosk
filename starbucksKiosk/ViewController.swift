//
//  ViewController.swift
//  starbucksKiosk
//
//  Created by 윤규호 on 12/26/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var OrderTableView: UITableView!
    @IBOutlet weak var payButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var MenuCollectionView: UICollectionView!
    @IBOutlet weak var CategorySelection: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}


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
    
    // MARK: func selectionValueChanged: SegmentedControl 변경에 따라서 화면에 비출 Menu 배열을 바꿔줌
    @IBAction func selectionValueChanged(_ sender: Any) {
        print(CategorySelection.selectedSegmentIndex)
        switch CategorySelection.selectedSegmentIndex {
        case 1:
            collectionsToDisplay = Menu.coldBrew
        case 2:
            collectionsToDisplay = Menu.frappucchino
        case 3:
            collectionsToDisplay = Menu.blended
        default:
            collectionsToDisplay = Menu.espresso
        }
        // MenuCollectionview에 들어가는 데이터를 다시 로드
        MenuCollectionView.reloadData()
    }
    
    // CollectionViewCell에 할당할 데이터를 담는 배열 선언
    lazy var collectionsToDisplay: [Menu] = Menu.espresso
    
    var customer = Order()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        OrderTableView.delegate = self
        OrderTableView.dataSource = self
        MenuCollectionView.dataSource = self
        MenuCollectionView.delegate = self
        // Do any additional setup after loading the view.
    }
}


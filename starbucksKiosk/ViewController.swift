//
//  ViewController.swift
//  starbucksKiosk
//
//  Created by 윤규호 on 12/26/23.
//

import UIKit

class ViewController: UIViewController {


    // MARK: Variable

    @IBOutlet weak var mainTitle: UILabel!
    @IBOutlet weak var OrderTableView: UITableView!
    @IBOutlet weak var payButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var MenuCollectionView: UICollectionView!
    @IBOutlet weak var CategorySelection: UISegmentedControl!
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var totalQuantityLabel: UILabel!
    
    lazy var collectionsToDisplay: [Menu] = Menu.espresso
    
    var customer = Order()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        OrderTableView.delegate = self
        OrderTableView.dataSource = self
        MenuCollectionView.dataSource = self
        MenuCollectionView.delegate = self
    }
    
    // MARK: IBAction function
    @IBAction func selectionValueChanged(_ sender: Any) {
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
        MenuCollectionView.reloadData()
    }
    
    @IBAction func payButtonTapped(_ sender: UIButton) {
        if customer.totalPrice == 0 {
            let alert = UIAlertController(title: nil , message: "결제할 항목이 없습니다.", preferredStyle: .alert)
                  let action = UIAlertAction(title: "확인", style: .default)
                  alert.addAction(action)
                  present(alert, animated: true, completion: nil)
        } else {
            let message = "\(customer.totalPrice) 원을 결제하시겠습니까?"
            let alert = UIAlertController(title: "결제 확인", message: message, preferredStyle: .alert)
            let actionPay = UIAlertAction(title: "결제", style: .default) { [weak self] _ in
                self?.presentPaymentOptions()
            }
            let actionCancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
            alert.addAction(actionPay)
            alert.addAction(actionCancel)
            present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func clearOrderTapped(_ sender: UIButton) {
        if customer.totalPrice == 0 {
            let alert = UIAlertController(title: nil , message: "취소할 항목이 없습니다.", preferredStyle: .alert)
                  let action = UIAlertAction(title: "확인", style: .default)
                  alert.addAction(action)
                  present(alert, animated: true, completion: nil)
        }else {
            let confirmAlert = UIAlertController(title: "전체 삭제", message: "전체 항목을 삭제하시겠습니까?", preferredStyle: .alert)
            let confirmAction = UIAlertAction(title: "예", style: .destructive) { [weak self] _ in
                self?.customer.clearOrder()
                self?.OrderTableView.reloadData()
                self?.updateTotalDisplay()
            }
            let cancelAction = UIAlertAction(title: "아니오", style: .cancel, handler: nil)
            confirmAlert.addAction(confirmAction)
            confirmAlert.addAction(cancelAction)
            present(confirmAlert, animated: true, completion: nil)
        }
    }
    
    // MARK: function
    func presentPaymentOptions() {
       let paymentActionSheet = UIAlertController(title: "어떤 결제 수단으로 결제하시겠습니까?", message: nil, preferredStyle: .actionSheet)
       let cardPaymentAction = UIAlertAction(title: "카드결제", style: .default) { [weak self] _ in
           self?.completeOrder()
       }
       let couponPaymentAction = UIAlertAction(title: "쿠폰결제", style: .default) { [weak self] _ in
           self?.completeOrder()
       }
       let easyPaymentAction = UIAlertAction(title: "간편결제", style: .default) { [weak self] _ in
           self?.completeOrder()
       }
       let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: nil)
       paymentActionSheet.addAction(cardPaymentAction)
       paymentActionSheet.addAction(couponPaymentAction)
       paymentActionSheet.addAction(easyPaymentAction)
       paymentActionSheet.addAction(cancelAction)
       present(paymentActionSheet, animated: true, completion: nil)
    }
    
    func completeOrder() {
        let completionAlert = UIAlertController(title: nil, message: "주문이 완료되었습니다 :)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "확인", style: .default) { [weak self] _ in
            self?.customer.clearOrder()
            self?.customer.calculateTotal()
            self?.totalPriceLabel.text = String(self?.customer.totalPrice ?? 0 ) + " 원"
            self?.totalQuantityLabel.text = String(self?.customer.totalQuantity ?? 0 ) + " 개"
            self?.OrderTableView.reloadData()
        }
        completionAlert.addAction(okAction)
        present(completionAlert, animated: true, completion: nil)
    }
    
    func updateTotalDisplay() {
        totalPriceLabel.text = "\(customer.totalPrice) 원"
        totalQuantityLabel.text = "\(customer.totalQuantity) 개"
    }
}


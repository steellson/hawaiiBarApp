//
//  PaymentViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import Foundation
import UIKit

//MARK: - Payment Methods Enum

enum PaymentMethods: String, CaseIterable {
    case Card
    case Cash
}


//MARK: - Payment View Controller

class PaymentViewController: UIViewController {
    
    //MARK: - UI Elements
    
    let paymentMethodTextLabel    = UILabel(.quickBold20, .black, .left, "Payment method")
    var paymentMethodPickerTable  : UITableView!
    let totalPriceTextLabel       = UILabel(.quickBold24, .black, .left, "Total price")
    let moneyPriceLabel           = UILabel(.quickBold24, UIColor.specialOrange, .right, "52 $")
    let completeButton            = UIButton("Complete payment")
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = .specialWhite
        
        view.addSubview(paymentMethodTextLabel)
        view.addSubview(totalPriceTextLabel)
        view.addSubview(moneyPriceLabel)
        view.addSubview(completeButton)
        
        setupNavigationBar()
        setupPaymentMethodPickerTable()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(menuBackBarButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        navigationItem.title = "Payment"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.quickBold20]
    }
    
    private func setupPaymentMethodPickerTable() {
        paymentMethodPickerTable                      = UITableView(frame: .zero, style: .plain)
        
        guard let paymentMethodPickerTable            = paymentMethodPickerTable else { return }
        paymentMethodPickerTable.backgroundColor      = .white
        paymentMethodPickerTable.isScrollEnabled      = false
        paymentMethodPickerTable.separatorInset.right = paymentMethodPickerTable.separatorInset.left
        paymentMethodPickerTable.layer.cornerRadius   = 18
        paymentMethodPickerTable.delegate             = self
        paymentMethodPickerTable.dataSource           = self
        paymentMethodPickerTable.register(ChooseMethodCell.self, forCellReuseIdentifier: "paymentMethodCell")

        view.addSubview(paymentMethodPickerTable)
    }
    
   
    
    //MARK: - Buttons Action
    
    @objc private func menuBackBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
}


//MARK: - Protocol Extension



//MARK: - PaymentMethodPickerTable DS Extension

extension PaymentViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PaymentMethods.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let methodCell        = tableView.dequeueReusableCell(withIdentifier: "paymentMethodCell", for: indexPath) as! ChooseMethodCell
        guard let pickerImage = UIImage(systemName: "circle") else { return methodCell }
        let text              = PaymentMethods.allCases[indexPath.row].rawValue
        methodCell.configureCell(image: pickerImage, text: text)
        return methodCell
    }
    
    
}


//MARK: - PaymentMethodPickerTable Delegate Extension

extension PaymentViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let methodCell = tableView.cellForRow(at: indexPath) as? ChooseMethodCell else { return }
        methodCell.pickerView.image = UIImage(systemName: "record.circle")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 2
    }
    
}

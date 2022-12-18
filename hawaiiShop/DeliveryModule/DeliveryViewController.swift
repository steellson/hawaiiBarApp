//
//  DeliveryViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 15.12.2022.
//

import Foundation
import UIKit

class DeliveryViewController: UIViewController {
    
    //MARK: - UI Elements
    
    let addressDetailTextLabel       = HWLabel().buildHWDeliveryAdressDetailsTextLabel()
    let changeButton                 = HWButton().buildHWDeliveryChangeButton()
    let addressView                  = HWDeliveryAddressView()
    let deliveryMethodLabel          = HWLabel().buildHWDeliveryMethodLabel()
    var deliveryMethodPickerTable    : UITableView?
    let totalPriceTextLabel          = HWLabel().buildCartTotalPriceTextLabel()
    let moneyPriceLabel              = HWLabel().buildCartPriceMoneyLabel()
    let proceedToPaymentButton       = HWButton().buildHWDeliveryProceedToPaymentButton()
    
    var deliveryTypes                 = DeliveryType.allCases
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 244/255, alpha: 1)
        
        view.addSubview(addressDetailTextLabel)
        view.addSubview(changeButton)
        view.addSubview(addressView)
        view.addSubview(deliveryMethodLabel)
        view.addSubview(totalPriceTextLabel)
        view.addSubview(moneyPriceLabel)
        view.addSubview(proceedToPaymentButton)
        
        setupNavigationBar()
        setupDeliveryMethodPickerTable()
        setupLayout()
    }
    
    private func setupNavigationBar() {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: #selector(menuBarButtonDidTapped))
        navigationItem.leftBarButtonItem = leftBarItem
        navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        navigationItem.title = "Delivery"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Quicksand-Bold", size: 20)!]
    }
    
    private func setupDeliveryMethodPickerTable() {
        deliveryMethodPickerTable = UITableView(frame: .zero, style: .plain)
        
        guard let deliveryMethodPickerTable = deliveryMethodPickerTable else { return }
        deliveryMethodPickerTable.backgroundColor = .white
        deliveryMethodPickerTable.isScrollEnabled = false
        deliveryMethodPickerTable.separatorInset.right = deliveryMethodPickerTable.separatorInset.left
        deliveryMethodPickerTable.layer.cornerRadius = 18
        deliveryMethodPickerTable.register(HWChooseMethodCell.self, forCellReuseIdentifier: "deliveryMethodCell")
        deliveryMethodPickerTable.delegate = self
        deliveryMethodPickerTable.dataSource = self
        
        view.addSubview(deliveryMethodPickerTable)
    }
    
   
    
    //MARK: - Buttons Action
    
    @objc private func menuBarButtonDidTapped() {
        print("Bar Button Did Tapped")
    }
}


//MARK: - Protocol Extension



//MARK: - DeliveryMethodPickerTable DS Extension

extension DeliveryViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DeliveryType.allCases.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let methodCell = tableView.dequeueReusableCell(withIdentifier: "deliveryMethodCell", for: indexPath) as! HWChooseMethodCell
        guard let pickerImage = UIImage(systemName: "circle") else { return HWChooseMethodCell() }
        let text = deliveryTypes[indexPath.row].rawValue
        methodCell.configureCell(image: pickerImage, text: text)
        return methodCell
    }
    
    
}


//MARK: - DeliveryMethodPickerTable Delegate Extension

extension DeliveryViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let methodCell = tableView.cellForRow(at: indexPath) as? HWChooseMethodCell else { return }
        methodCell.pickerView.image = UIImage(systemName: "recording.circle")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 2
    }
    
}

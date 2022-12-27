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
    
    let addressDetailTextLabel       = UILabel(.quickBold20, .black, .left, "Address details")
    let changeButton                 = UIButton().buildChangeButton()
    let addressView                  = DeliveryAddressView()
    let deliveryMethodLabel          = UILabel(.quickBold20, .black, .left, "Delivery method")
    var deliveryMethodPickerTable    : UITableView?
    let totalPriceTextLabel          = UILabel(.quickBold24, .black, .left, "Total price")
    let moneyPriceLabel              = UILabel(.quickBold24, UIColor.specialOrange, .right, "52 $")
    let proceedToPaymentButton       = UIButton("Proceed to payment")
    
    var deliveryTypes                 = DeliveryType.allCases
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupController()
    }
    
    
//MARK: - Setup Controller
    
    private func setupController() {
        view.backgroundColor = .specialWhite
        
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
      //  navigationController?.navigationBar.setupNavigationBar(self, "Delivery")
    }
    
    private func setupDeliveryMethodPickerTable() {
        deliveryMethodPickerTable                      = UITableView(frame: .zero, style: .plain)
        
        guard let deliveryMethodPickerTable            = deliveryMethodPickerTable else { return }
        deliveryMethodPickerTable.backgroundColor      = .white
        deliveryMethodPickerTable.isScrollEnabled      = false
        deliveryMethodPickerTable.separatorInset.right = deliveryMethodPickerTable.separatorInset.left
        deliveryMethodPickerTable.layer.cornerRadius   = 18
        deliveryMethodPickerTable.delegate             = self
        deliveryMethodPickerTable.dataSource           = self
        deliveryMethodPickerTable.register(ChooseMethodCell.self, forCellReuseIdentifier: "deliveryMethodCell")

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
        let methodCell        = tableView.dequeueReusableCell(withIdentifier: "deliveryMethodCell", for: indexPath) as! ChooseMethodCell
        guard let pickerImage = UIImage(systemName: "circle") else { return ChooseMethodCell() }
        let text              = deliveryTypes[indexPath.row].rawValue
        methodCell.configureCell(image: pickerImage, text: text)
        return methodCell
    }
    
    
}


//MARK: - DeliveryMethodPickerTable Delegate Extension

extension DeliveryViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let methodCell = tableView.cellForRow(at: indexPath) as? ChooseMethodCell else { return }
        methodCell.pickerView.image = UIImage(systemName: "recording.circle")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return tableView.frame.height / 2
    }
    
}

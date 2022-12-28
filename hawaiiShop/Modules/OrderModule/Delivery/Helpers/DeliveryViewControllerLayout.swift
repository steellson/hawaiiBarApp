//
//  DeliveryViewControllerLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 15.12.2022.
//

import UIKit

extension DeliveryController {
    
    override func setupLayout() {
        super.setupLayout()
        
        adressDetailTextLabelLayout()
        changeButtonLayout()
        addressViewLayout()
        deliveryMethodLabelLayout()
        deliveryMethodPickerTableLayout()
        totalPriceTextLabelLayout()
        moneyPriceLabelLayout()
        proceedToPaymentButtonLayout()
    }
    
    
//MARK: - Layout Methods
    
    private func adressDetailTextLabelLayout() {
        addressDetailTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            addressDetailTextLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            addressDetailTextLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            addressDetailTextLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func changeButtonLayout() {
        changeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            changeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            changeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15),
            changeButton.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func addressViewLayout() {
        addressView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            addressView.topAnchor.constraint(equalTo: addressDetailTextLabel.bottomAnchor, constant: 10),
            addressView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            addressView.widthAnchor.constraint(equalToConstant: view.frame.width - 30),
            addressView.heightAnchor.constraint(equalToConstant: 120)
        ])
    }
    
    private func deliveryMethodLabelLayout() {
        deliveryMethodLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            deliveryMethodLabel.topAnchor.constraint(equalTo: addressView.bottomAnchor, constant: 25),
            deliveryMethodLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            deliveryMethodLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func deliveryMethodPickerTableLayout() {
        guard let deliveryMethodPickerTable = deliveryMethodPickerTable else { return }
        deliveryMethodPickerTable.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            deliveryMethodPickerTable.topAnchor.constraint(equalTo: deliveryMethodLabel.bottomAnchor, constant: 10),
            deliveryMethodPickerTable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            deliveryMethodPickerTable.widthAnchor.constraint(equalToConstant: view.frame.width - 30),
            deliveryMethodPickerTable.heightAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    private func totalPriceTextLabelLayout() {
        totalPriceTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            totalPriceTextLabel.topAnchor.constraint(equalTo: deliveryMethodPickerTable!.bottomAnchor, constant: 30),
            totalPriceTextLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            totalPriceTextLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func moneyPriceLabelLayout() {
        moneyPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            moneyPriceLabel.topAnchor.constraint(equalTo: deliveryMethodPickerTable!.bottomAnchor, constant: 30),
            moneyPriceLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            moneyPriceLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func proceedToPaymentButtonLayout() {
        proceedToPaymentButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            proceedToPaymentButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -55),
            proceedToPaymentButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            proceedToPaymentButton.widthAnchor.constraint(equalToConstant: view.frame.width - 40),
            proceedToPaymentButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

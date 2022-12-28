//
//  PaymentViewControllerLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import UIKit

extension PaymentView {
    
    override func setupLayout() {
        super.setupLayout()
        
        paymentMethodTextLabelLayout()
        paymentMethodPickerTableLayout()
        totalPriceTextLabelLayout()
        moneyPriceLabelLayout()
        completeButtonLayout()
    }
    
//MARK: - Methods
    
    private func paymentMethodTextLabelLayout() {
        paymentMethodTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            paymentMethodTextLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            paymentMethodTextLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            paymentMethodTextLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func paymentMethodPickerTableLayout() {
        paymentMethodPickerTable.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            paymentMethodPickerTable.topAnchor.constraint(equalTo: paymentMethodTextLabel.bottomAnchor, constant: 10),
            paymentMethodPickerTable.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            paymentMethodPickerTable.widthAnchor.constraint(equalToConstant: view.frame.width - 30),
            paymentMethodPickerTable.heightAnchor.constraint(equalToConstant: 130)
        ])
    }
    
    private func totalPriceTextLabelLayout() {
        totalPriceTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            totalPriceTextLabel.bottomAnchor.constraint(equalTo: completeButton.topAnchor, constant: -30),
            totalPriceTextLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            totalPriceTextLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func moneyPriceLabelLayout() {
        moneyPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            moneyPriceLabel.bottomAnchor.constraint(equalTo: completeButton.topAnchor, constant: -30),
            moneyPriceLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            moneyPriceLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func completeButtonLayout() {
        completeButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            completeButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -55),
            completeButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            completeButton.widthAnchor.constraint(equalToConstant: view.frame.width - 40),
            completeButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}

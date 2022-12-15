//
//  DeliveryViewControllerLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 15.12.2022.
//

import Foundation
import UIKit

extension DeliveryViewController {
    
    func setupLayout() {
        adressDetailTextLabelLayout()
        changeButtonLayout()
        addressViewLayout()
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
}

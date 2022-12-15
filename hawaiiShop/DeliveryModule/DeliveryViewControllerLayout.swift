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
    }
    
    
//MARK: - Layout Methods
    
    private func adressDetailTextLabelLayout() {
        adressDetailTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            adressDetailTextLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            adressDetailTextLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15),
            adressDetailTextLabel.heightAnchor.constraint(equalToConstant: 30)
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
}

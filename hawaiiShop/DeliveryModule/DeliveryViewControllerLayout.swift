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
}

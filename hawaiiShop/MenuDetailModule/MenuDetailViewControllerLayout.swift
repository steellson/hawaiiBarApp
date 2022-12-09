//
//  MenuDetailLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 08.12.2022.
//

import Foundation
import UIKit

extension MenuDetailViewController {
    
    func setupLayout() {
        titleLabelLayout()
    }
    
//MARK: - Methods
    
    private func titleLabelLayout() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 25),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
}

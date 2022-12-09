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
        menuDetailImageViewLayout()
    }
    
//MARK: - Methods
    
    private func titleLabelLayout() {
        menuDetailTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            menuDetailTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 25),
            menuDetailTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            menuDetailTitleLabel.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
    
    private func menuDetailImageViewLayout() {
        menuDetailImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            menuDetailImageView.topAnchor.constraint(equalTo: menuDetailTitleLabel.bottomAnchor, constant: 20),
            menuDetailImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            menuDetailImageView.widthAnchor.constraint(equalToConstant: 160),
            menuDetailImageView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}

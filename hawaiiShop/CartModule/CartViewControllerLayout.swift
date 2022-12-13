//
//  CartViewControllerLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import Foundation
import UIKit

extension CartViewController {
    
    func setupLayout() {
        
        cartCollectionViewLayout()
    }
    
    
//MARK: - Methods
    
    private func cartCollectionViewLayout() {
        cartCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            cartCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0),
            cartCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cartCollectionView.widthAnchor.constraint(equalToConstant: view.frame.width),
            cartCollectionView.heightAnchor.constraint(equalToConstant: view.frame.height / 2 - 80)
        ])
    }
}

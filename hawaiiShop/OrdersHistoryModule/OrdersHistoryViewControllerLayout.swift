//
//  OrdersHistoryViewControllerLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import Foundation
import UIKit

extension OrdersHistoryViewController {
    
    func setupLayout() {
        
        ordersCollectionViewLayout()
    }
    
//MARK: - Methods
    
    private func ordersCollectionViewLayout() {
        ordersCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            ordersCollectionView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 15),
            ordersCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            ordersCollectionView.widthAnchor.constraint(equalToConstant: view.frame.width),
            ordersCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

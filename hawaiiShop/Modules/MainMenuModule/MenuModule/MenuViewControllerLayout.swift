//
//  MenuViewControllerLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 06.12.2022.
//

import Foundation
import UIKit

extension MenuController {
    
    override func setupLayout() {
        super.setupLayout()
        
        setupMenuCollectionViewLayout()
    }
    
    private func setupMenuCollectionViewLayout() {
        menuCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            menuCollectionView.topAnchor.constraint(equalTo: view.topAnchor),
            menuCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            menuCollectionView.leftAnchor.constraint(equalTo: view.leftAnchor),
            menuCollectionView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }
}

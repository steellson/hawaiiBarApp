//
//  MainScreenLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 25.11.2022.
//

import Foundation
import UIKit

extension MainViewController {
    
    func setupLayout() {
        searchFieldLayout()
    }
    
    
//MARK: - Methods
    
    private func searchFieldLayout() {
        searchField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            searchField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30),
            searchField.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            searchField.widthAnchor.constraint(equalToConstant: 345),
            searchField.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
}

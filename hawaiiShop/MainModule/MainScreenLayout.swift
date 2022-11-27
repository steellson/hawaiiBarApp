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
        menuLabelLayout()
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
    
    private func menuLabelLayout() {
        menuLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            menuLabel.topAnchor.constraint(equalTo: searchField.bottomAnchor, constant: 35),
            menuLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            menuLabel.rightAnchor.constraint(equalTo: view.leftAnchor, constant: 250),
            menuLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
}

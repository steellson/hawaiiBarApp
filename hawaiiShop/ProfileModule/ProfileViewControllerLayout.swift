//
//  ProfileViewControllerLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 21.12.2022.
//

import Foundation
import UIKit


extension ProfileViewController {
    
    
    func setupLayout() {
        personalDetailsTextLabelLayout()
        changeButtonLayout()
        profileCollectionViewLayout()
        logoutButtonLayout()
    }
    
    
//MARK: - Methods
    
    private func personalDetailsTextLabelLayout() {
        personalDetailsTextLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            personalDetailsTextLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            personalDetailsTextLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 15)
        ])
    }
    
    private func changeButtonLayout() {
        changeButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            changeButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40),
            changeButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -15)
        ])
    }
    
    private func profileCollectionViewLayout() {
        profileCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profileCollectionView.topAnchor.constraint(equalTo: personalDetailsTextLabel.bottomAnchor, constant: 20),
            profileCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            profileCollectionView.bottomAnchor.constraint(equalTo: logoutButton.topAnchor, constant: -20)
        ])
    }
    
    private func logoutButtonLayout() {
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            logoutButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -55),
            logoutButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logoutButton.widthAnchor.constraint(equalToConstant: view.frame.width - 40),
            logoutButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

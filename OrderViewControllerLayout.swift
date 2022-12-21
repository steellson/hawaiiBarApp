//
//  OrderViewControllerLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 21.12.2022.
//

import Foundation
import UIKit

extension OrderViewController {
    
    func setupLayout() {
        infoStackLayout()
        orderCollectionViewLayout()
        repeatOrderButtonLayout()
        totalPriceTextLabellayout()
        moneyPriceleLabelLayout()
    }
    
//MARK: - Methods
    
    private func infoStackLayout() {
        infoStack.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            infoStack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 25),
            infoStack.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
    
    private func orderCollectionViewLayout() {
        orderCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orderCollectionView.topAnchor.constraint(equalTo: infoStack.bottomAnchor, constant: 15),
            orderCollectionView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            orderCollectionView.widthAnchor.constraint(equalTo: view.widthAnchor),
            orderCollectionView.heightAnchor.constraint(equalToConstant: view.frame.height / 3 + 20)
        ])
    }
    
    private func totalPriceTextLabellayout() {
        totalPriceTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            totalPriceTextLabel.bottomAnchor.constraint(equalTo: repeatOrderButton.topAnchor, constant: -40),
            totalPriceTextLabel.leftAnchor.constraint(equalTo: repeatOrderButton.leftAnchor)
        ])
    }
    
    private func moneyPriceleLabelLayout() {
        moneyPriceleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            moneyPriceleLabel.bottomAnchor.constraint(equalTo: repeatOrderButton.topAnchor, constant: -40),
            moneyPriceleLabel.rightAnchor.constraint(equalTo: repeatOrderButton.rightAnchor)
        ])
    }
    
    
    private func repeatOrderButtonLayout() {
        repeatOrderButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            repeatOrderButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -55),
            repeatOrderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            repeatOrderButton.widthAnchor.constraint(equalToConstant: view.frame.width - 40),
            repeatOrderButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

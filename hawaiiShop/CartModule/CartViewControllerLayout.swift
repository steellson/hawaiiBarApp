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
        totalPriceTextLabelLayout()
        priceMoneyLabelLayout()
        commentTextViewLayout()
        completeOrderButtonLayout()
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
    
    private func totalPriceTextLabelLayout() {
        totalPriceTextLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            totalPriceTextLabel.topAnchor.constraint(equalTo: cartCollectionView.bottomAnchor, constant: 10),
            totalPriceTextLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 30),
            totalPriceTextLabel.heightAnchor.constraint(equalToConstant: 30),
            totalPriceTextLabel.widthAnchor.constraint(equalToConstant: 230)
        ])
    }
    
    private func priceMoneyLabelLayout() {
        priceMoneyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceMoneyLabel.topAnchor.constraint(equalTo: cartCollectionView.bottomAnchor, constant: 10),
            priceMoneyLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -30),
            priceMoneyLabel.heightAnchor.constraint(equalToConstant: 30),
            priceMoneyLabel.widthAnchor.constraint(equalToConstant: 230)
        ])
    }
    
    private func commentTextViewLayout() {
        commentTextView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            commentTextView.topAnchor.constraint(equalTo: totalPriceTextLabel.bottomAnchor, constant: 15),
            commentTextView.heightAnchor.constraint(equalToConstant: 90),
            commentTextView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -25),
            commentTextView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 25)
        ])
    }
    
    private func completeOrderButtonLayout() {
        completeOrderButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            completeOrderButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -55),
            completeOrderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            completeOrderButton.widthAnchor.constraint(equalToConstant: view.frame.width - 40),
            completeOrderButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

//
//  CartViewControllerLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import UIKit

//MARK: - CartViewController Layout

extension CartController {
    
    override func setupLayout() {
            super.setupLayout()
        
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


//MARK: - CartEmptyViewController Layout


extension CartEmptyController {
    
    override func setupLayout() {
            super.setupLayout()
        
        imageViewLayout()
        titleLabelLayout()
        subtitleLabelLayout()
        createAnOrderButtonLayout()
    }
    
    
//MARK: - Methods

    private func imageViewLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.heightAnchor.constraint(equalToConstant: 130),
            imageView.widthAnchor.constraint(equalToConstant: 130),
        ])
    }
    
    private func titleLabelLayout() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 30),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.widthAnchor.constraint(equalToConstant: 170),
            titleLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func subtitleLabelLayout() {
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            subtitleLabel.widthAnchor.constraint(equalToConstant: 260),
            subtitleLabel.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func createAnOrderButtonLayout() {
        createAnOrderButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            createAnOrderButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -55),
            createAnOrderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            createAnOrderButton.widthAnchor.constraint(equalToConstant: view.frame.width - 40),
            createAnOrderButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

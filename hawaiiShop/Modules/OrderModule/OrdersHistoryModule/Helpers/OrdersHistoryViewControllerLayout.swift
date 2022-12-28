//
//  OrdersHistoryViewControllerLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import UIKit


//MARK: - OrdersHistoryViewControllerLayout Extension //////////

extension OrdersHistoryController {
    
    override func setupLayout() {
        super.setupLayout()
        
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



//MARK: - OrdersHistoryEmptyViewControllerLayout Extension //////////

extension OrdersHistoryEmptyController {
    
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

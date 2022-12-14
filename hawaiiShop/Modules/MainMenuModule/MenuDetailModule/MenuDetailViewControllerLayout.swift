//
//  MenuDetailLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 08.12.2022.
//

import UIKit

extension MenuDetailController {
    
    override func setupLayout() {
        super.setupLayout()
        
        menuDetailTitleLabelLayout()
        menuDetailImageViewLayout()
        menuDetailDescriptionLabelLayout()
        menuDetailWeightLabelLayout()
        menuDetailPriceLabelLayout()
        itemPickerLayout()
        menuDetailAddButtonLayout()
    }
    
//MARK: - Methods
    
    private func menuDetailTitleLabelLayout() {
        menuDetailTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            menuDetailTitleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 25),
            menuDetailTitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            menuDetailTitleLabel.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
    
    private func menuDetailImageViewLayout() {
        menuDetailImageView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            menuDetailImageView.topAnchor.constraint(equalTo: menuDetailTitleLabel.bottomAnchor, constant: 20),
            menuDetailImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            menuDetailImageView.widthAnchor.constraint(equalToConstant: 160),
            menuDetailImageView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
    
    private func menuDetailDescriptionLabelLayout() {
        menuDetailDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            menuDetailDescriptionLabel.topAnchor.constraint(equalTo: menuDetailImageView.bottomAnchor, constant: 20),
            menuDetailDescriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            menuDetailDescriptionLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            menuDetailDescriptionLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        ])
    }
    
    private func menuDetailWeightLabelLayout() {
        menuDetailWeightLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            menuDetailWeightLabel.topAnchor.constraint(equalTo: menuDetailDescriptionLabel.bottomAnchor, constant: 20),
            menuDetailWeightLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            menuDetailWeightLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            menuDetailWeightLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20)
        ])
    }
    
    private func menuDetailPriceLabelLayout() {
        menuDetailPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            menuDetailPriceLabel.topAnchor.constraint(equalTo: menuDetailWeightLabel.bottomAnchor, constant: 40),
            menuDetailPriceLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            menuDetailPriceLabel.widthAnchor.constraint(equalToConstant: 150),
            menuDetailPriceLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func itemPickerLayout() {
        itemPicker.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            itemPicker.widthAnchor.constraint(equalToConstant: 30),
            itemPicker.heightAnchor.constraint(equalToConstant: 30),
            itemPicker.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            itemPicker.centerYAnchor.constraint(equalTo: menuDetailPriceLabel.centerYAnchor)
        ])
    }
    
    private func menuDetailAddButtonLayout() {
        menuDetailAddButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            menuDetailAddButton.topAnchor.constraint(equalTo: menuDetailPriceLabel.bottomAnchor, constant: 35),
            menuDetailAddButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 20),
            menuDetailAddButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -20),
            menuDetailAddButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

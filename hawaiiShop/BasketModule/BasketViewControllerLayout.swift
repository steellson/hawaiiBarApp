//
//  BasketViewControllerLayout.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 09.12.2022.
//

import Foundation
import UIKit

///////////////////////////////////////////////////////////////////MARK: - BASKET VC LAYOUT
/////////////////////////////////////////////////////
////////////////////////////////////////////

extension BasketViewController {
    
    func setupLayout() {
        
    }
    
//MARK: - Methods
    
    private func lllayout() {
        
    }
    
}



///////////////////////////////////////////////////////////////////MARK: - EMPTY BASKET VC LAYOUT
/////////////////////////////////////////////////////
////////////////////////////////////////////


extension BasketEmptyViewController {
    
    func setupLayout() {
        basketEmptyImageViewLayout()
        basketEmptyTitleLayout()
        basketEmptySubtitleLayout()
        basketEmptyCreateAnOrderButtonLayout()
    }
    
//MARK: - Methods
    
    private func basketEmptyImageViewLayout() {
        basketEmptyImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            basketEmptyImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 220),
            basketEmptyImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            basketEmptyImageView.widthAnchor.constraint(equalToConstant: 180),
            basketEmptyImageView.heightAnchor.constraint(equalToConstant: 165)
        ])
    }
    
    private func basketEmptyTitleLayout() {
        basketEmptyTitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            basketEmptyTitle.topAnchor.constraint(equalTo: basketEmptyImageView.bottomAnchor, constant: 55),
            basketEmptyTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            basketEmptyTitle.widthAnchor.constraint(equalToConstant: 250),
            basketEmptyTitle.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func basketEmptySubtitleLayout() {
        basketEmptySubtitle.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            basketEmptySubtitle.topAnchor.constraint(equalTo: basketEmptyTitle.bottomAnchor, constant: 20),
            basketEmptySubtitle.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            basketEmptySubtitle.widthAnchor.constraint(equalToConstant: 300),
            basketEmptySubtitle.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    private func basketEmptyCreateAnOrderButtonLayout() {
        basketEmptyCreateAnOrderButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            basketEmptyCreateAnOrderButton.topAnchor.constraint(equalTo: basketEmptySubtitle.bottomAnchor, constant: 180),
            basketEmptyCreateAnOrderButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            basketEmptyCreateAnOrderButton.widthAnchor.constraint(equalToConstant: 350),
            basketEmptyCreateAnOrderButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }
}


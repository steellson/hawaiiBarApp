//
//  HWBasketCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 12.12.2022.
//

import Foundation
import UIKit

final class HWBasketCell: UICollectionViewCell {
    
    //UI Elements
    private let imageView    = UIImageView()
    private let nameLabel    = UILabel()
    private let priceLabel   = UILabel()
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - Setup Cell Methods
    
    func configureCell(_ image: UIImage, nameLabel: String, priceLabel: String) {
        self.imageView.image    = image
        self.nameLabel.text     = nameLabel
        self.priceLabel.text    = priceLabel
    }
    
    private func setupCell() {
        backgroundColor = .white
        layer.cornerRadius = 12
        
        contentView.addSubview(imageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(priceLabel)
        
        setupImageView()
        setupNameLabel()
        setupPriceLabel()
        
        setupLayout()
    }
    
    private func setupImageView() {
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .white
    }
    
    private func setupNameLabel() {
        nameLabel.contentMode = .left
        nameLabel.font = UIFont(name: "Quicksand-SemiBold", size: 18)
    }
    
    private func setupPriceLabel() {
        priceLabel.font = UIFont(name: "Quicksand-SemiBold", size: 18)
        priceLabel.textAlignment = .center
        priceLabel.textColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
    }
    
}

//MARK: - Layout Extension

extension HWBasketCell {
    
    private func setupLayout() {
        imageViewLayout()
        nameLabelLayout()
        priceLabelLayout()
    }
    
    private func imageViewLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 5),
            imageView.widthAnchor.constraint(equalToConstant: 80),
            imageView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    private func nameLabelLayout() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            nameLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 5),
            nameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -5)
        ])
    }
    
    private func priceLabelLayout() {
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 10),
            priceLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 5),
            priceLabel.widthAnchor.constraint(equalToConstant: 100)
        ])
    }
}

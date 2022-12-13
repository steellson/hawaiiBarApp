//
//  HWCartCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import Foundation
import UIKit

final class HWCartCell: UICollectionViewCell {
    
    //MARK: - UI Elements
    var imageView:  UIImageView!
    var nameLabel:  UILabel!
    var priceLabel: UILabel!
    
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupCell()
    }
    

//MARK: - Setup Cell
    
    public func configureCell(_ image: UIImage?, _ nameLabel: String, priceLabel: String) {
        self.imageView.image = image
        self.nameLabel.text  = nameLabel
        self.priceLabel.text = priceLabel
    }
    
    private func setupCell() {
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 18
        
        setupImageView()
        setupNameLabel()
        setupPriceLabel()
        setupCellLayout()
    }
    
    private func setupImageView() {
        imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        
        contentView.addSubview(imageView)
    }
    
    private func setupNameLabel() {
        nameLabel = UILabel()
        nameLabel.contentMode = .left
        nameLabel.font = UIFont(name: "Quicksand-SemiBold", size: 18)
        
        contentView.addSubview(nameLabel)
    }
    
    private func setupPriceLabel() {
        priceLabel = UILabel()
        priceLabel.contentMode = .center
        priceLabel.font = UIFont(name: "Quicksand-SemiBold", size: 18)
        priceLabel.textColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)

        contentView.addSubview(priceLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: - Layout Extension

extension HWCartCell {
    
    private func setupCellLayout() {
        imageViewLayout()
        nameLabelLayout()
        priceLabelLayout()
    }
    
    
    private func imageViewLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            imageView.widthAnchor.constraint(equalToConstant: 70),
            imageView.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private func nameLabelLayout() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            nameLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 10),
            nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -15),
        ])
    }
    
    private func priceLabelLayout() {
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15),
            priceLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 20),
            priceLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}

//
//  MenuCardCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 06.12.2022.
//

import Foundation
import UIKit

final class MenuCardCell: UICollectionViewCell {
    
    private let imageView   = UIImageView()
    private let nameLabel   = UILabel()
    private let weightLabel = UILabel()
    private let priceLabel  = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       setupCell()
    }
    
    func configureCell(with image: UIImage, nameLabel: String, weightLabel: String, priceLabel: String) {
        self.imageView.image    = image
        self.nameLabel.text     = nameLabel
        self.weightLabel.text   = weightLabel
        self.priceLabel.text    = priceLabel
    }
    
    
    private func setupCell() {
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset  = .init(width: 10, height: 10)
        self.layer.shadowRadius  = 15
        self.layer.shadowColor   = .init(red: 0, green: 0, blue: 0, alpha: 0.4)
    
        setupBackgroundLayerOfCell()
        setupImageView()
        setupNameLabel()
        setupWeightLabel()
        setupPriceLabel()
    }
    
    private func setupBackgroundLayerOfCell() {
        let gradientLayer          = CAGradientLayer()
        let startColor             = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        let endColor               = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
        gradientLayer.colors       = [startColor.cgColor, endColor.cgColor]
        gradientLayer.frame        = CGRect(x: 0, y: 0, width: contentView.bounds.width, height: contentView.bounds.height)
        gradientLayer.cornerRadius = 16
        contentView.layer.addSublayer(gradientLayer)
        
        contentView.backgroundColor = .none
        contentView.layer.cornerRadius = 16
    }
    
    private func setupImageView() {
        self.contentView.addSubview(imageView)
        imageView.backgroundColor     = .none
        imageView.contentMode         = .scaleAspectFit
        imageView.layer.shadowOpacity = 0.2
        imageView.layer.shadowRadius  = 3
        imageView.layer.shadowOffset  = .init(width: 10, height: 5)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor)
        ])
    }
    
    private func setupNameLabel() {
        self.contentView.addSubview(nameLabel)
        nameLabel.contentMode   = .center
        nameLabel.font          = .quickBold20
        nameLabel.textAlignment = .center
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
            nameLabel.widthAnchor.constraint(equalToConstant: contentView.bounds.width),
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    private func setupWeightLabel() { //
        self.contentView.addSubview(weightLabel)
        weightLabel.contentMode   = .center
        weightLabel.font          = .quickReg16
        weightLabel.textColor     = .specialGray
        weightLabel.textAlignment = .center
        weightLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            weightLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            weightLabel.widthAnchor.constraint(equalToConstant: contentView.bounds.width),
            weightLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    private func setupPriceLabel() { //
        self.contentView.addSubview(priceLabel)
        priceLabel.contentMode   = .center
        priceLabel.font          = .quickBold24
        priceLabel.textColor     = .specialOrange
        priceLabel.textAlignment = .center
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: weightLabel.bottomAnchor, constant: 10),
            priceLabel.widthAnchor.constraint(equalToConstant: contentView.bounds.width),
            priceLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

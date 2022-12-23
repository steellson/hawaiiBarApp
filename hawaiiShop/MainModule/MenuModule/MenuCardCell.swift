//
//  MenuCardCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 06.12.2022.
//

import Foundation
import UIKit

final class MenuCardCell: UICollectionViewCell {
    
    //MARK: - UIElements
    
    private let imageView: UIImageView = {
        let imageView                  = UIImageView()
        imageView.backgroundColor      = .none
        imageView.contentMode          = .scaleAspectFit
        imageView.setupShadow()
        return imageView
    }()
    
    private let nameLabel: UILabel = {
        let nameLabel              = UILabel()
        nameLabel.contentMode      = .center
        nameLabel.textAlignment    = .center
        nameLabel.font             = .quickBold20
        return nameLabel
    }()
    
    private let weightLabel: UILabel = {
        let weightLabel              = UILabel()
        weightLabel.contentMode      = .center
        weightLabel.textAlignment    = .center
        weightLabel.font             = .quickReg16
        weightLabel.textColor        = .specialGray
        return weightLabel
    }()
    
    private let priceLabel: UILabel = {
        let priceLabel              = UILabel()
        priceLabel.contentMode      = .center
        priceLabel.textAlignment    = .center
        priceLabel.font             = .quickBold24
        priceLabel.textColor        = .specialOrange
        return priceLabel
    }()
    
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
//MARK: - Setup Cell
    
    func configureCell(with image: UIImage, nameLabel: String, weightLabel: String, priceLabel: String) {
        self.imageView.image    = image
        self.nameLabel.text     = nameLabel
        self.weightLabel.text   = weightLabel
        self.priceLabel.text    = priceLabel
    }
    
    private func setupCell() {
        contentView.addSubview(imageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(weightLabel)
        contentView.addSubview(priceLabel)
        
        setupBackgroundLayerOfCell()
        setupShadow()
        setupLayout()
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
}


//MARK: - Layout Extension

extension MenuCardCell {
    
    private func setupLayout() {
        imageViewLayout()
        nameLabelLayout()
        weightLabelLayout()
        priceLabelLayout()
    }
    
//MARK: - Methods
    
    private func imageViewLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor)
        ])
    }
    
    private func nameLabelLayout() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
            nameLabel.widthAnchor.constraint(equalToConstant: contentView.bounds.width),
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    private func weightLabelLayout() { 
        weightLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            weightLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 5),
            weightLabel.widthAnchor.constraint(equalToConstant: contentView.bounds.width),
            weightLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    private func priceLabelLayout() {
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: weightLabel.bottomAnchor, constant: 10),
            priceLabel.widthAnchor.constraint(equalToConstant: contentView.bounds.width),
            priceLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }

}

//
//  MainMenuCardCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 27.11.2022.
//

import Foundation
import UIKit

final class MainMenuCardCell: UICollectionViewCell {
    
    private let imageView = UIImageView()
    private let label     = UILabel()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
       setupCell()
    }
    
    func configureCell(with image: UIImage, and label: String) {
        self.imageView.image = image
        self.label.text      = label
    }
    
    
    private func setupCell() {
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset  = .init(width: 10, height: 10)
        self.layer.shadowRadius  = 15
        self.layer.shadowColor   = .init(red: 0, green: 0, blue: 0, alpha: 0.4)
    
        setupBackgroundLayerOfCell()
        setupImageView()
        setupLabel()
    }
    
    private func setupBackgroundLayerOfCell() {
        let gradientLayer    = CAGradientLayer()
        let startColor       = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        let endColor         = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
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
    
    private func setupLabel() {
        self.contentView.addSubview(label)
        label.contentMode   = .center
        label.font          = .quickBold20
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
            label.widthAnchor.constraint(equalToConstant: contentView.bounds.width),
            label.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

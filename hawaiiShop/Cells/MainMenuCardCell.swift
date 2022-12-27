//
//  MainMenuCardCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 27.11.2022.
//

import UIKit

final class MainMenuCardCell: UICollectionViewCell {
    
    //MARK: UI Elements
    
    private let imageView: UIImageView = {
        let imageView                  = UIImageView()
        imageView.backgroundColor      = .none
        imageView.contentMode          = .scaleAspectFit
        imageView.setupShadow()
        return imageView
    }()
    
    private let label: UILabel = {
        let label = UILabel()
        label.font          = .quickBold20
        label.contentMode   = .center
        label.textAlignment = .center
        return label
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
    
    func configureCell(with image: UIImage, and label: String) {
        self.imageView.image = image
        self.label.text      = label
    }
    
    private func setupCell() {
        setupBackgroundLayerOfCell()
        
        contentView.addSubview(imageView)
        contentView.addSubview(label)

        setupShadow()
        setupLayout()
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
}

//MARK: - Layout Extension

extension MainMenuCardCell {
    
    private func setupLayout() {
        setupImageViewLayout()
        setupLabelLayout()
    }
    
    private func setupImageViewLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 5),
            imageView.heightAnchor.constraint(equalToConstant: 150),
            imageView.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor)
        ])
    }
    
    private func setupLabelLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 15),
            label.widthAnchor.constraint(equalToConstant: contentView.bounds.width),
            label.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}

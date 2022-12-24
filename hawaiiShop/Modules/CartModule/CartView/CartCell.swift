//
//  CartCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import Foundation
import UIKit

final class CartCell: UICollectionViewCell {
    
    //MARK: - UI Elements
    
    var imageView: UIImageView = {
       let imageView            = UIImageView()
        imageView.contentMode   = .scaleAspectFit
        imageView.clipsToBounds = true
        return imageView
    }()
    
    var nameLabel: UILabel = {
        let nameLabel            = UILabel()
         nameLabel.contentMode   = .left
         nameLabel.font          = UIFont(name: "Quicksand-SemiBold", size: 18)
         return nameLabel
    }()
    
    var priceLabel: UILabel = {
       let priceLabel            = UILabel()
        priceLabel.contentMode   = .center
        priceLabel.font          = .quickSBold22
        priceLabel.textColor     = UIColor.specialOrange
        return priceLabel
    }()
    
    var plusItemButton  : UIButton!
    var counter         = UILabel(.quickSBold18, .black, .center, "1")
    var minusItemButton : UIButton!
    
    
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
        contentView.backgroundColor    = .white
        contentView.layer.cornerRadius = 18
        contentView.contentMode        = .scaleAspectFill
        
        contentView.addSubview(imageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(priceLabel)
        contentView.addSubview(counter)

        
        setupItemChangeButtons()
        setupShadow()
        setupCellLayout()
    }
    
    private func setupItemChangeButtons() {
        plusItemButton  = UIButton().buildMenuDetailItemsButton(with: "plus")
        minusItemButton = UIButton().buildMenuDetailItemsButton(with: "minus")
        
        plusItemButton.backgroundColor = .specialOrange

        contentView.addSubview(plusItemButton)
        contentView.addSubview(minusItemButton)
    }

    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

//MARK: - Layout Extension

extension CartCell {
    
    private func setupCellLayout() {
        imageViewLayout()
        nameLabelLayout()
        priceLabelLayout()
        plusButtonLayout()
        counterLabelLayout()
        minusButtonLayout()
    }
    
    
    private func imageViewLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15),
            imageView.widthAnchor.constraint(equalToConstant: 70),
            imageView.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private func nameLabelLayout() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            nameLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 15),
            nameLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -15),
        ])
    }
    
    private func priceLabelLayout() {
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            priceLabel.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 20),
            priceLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
    
    private func plusButtonLayout() {
        plusItemButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            plusItemButton.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30),
            plusItemButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            plusItemButton.heightAnchor.constraint(equalToConstant: 20),
            plusItemButton.widthAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func counterLabelLayout() {
        counter.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            counter.rightAnchor.constraint(equalTo: plusItemButton.leftAnchor, constant: -7),
            counter.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            counter.heightAnchor.constraint(equalToConstant: 20),
            counter.widthAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func minusButtonLayout() {
        minusItemButton.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            minusItemButton.rightAnchor.constraint(equalTo: counter.leftAnchor, constant: -7),
            minusItemButton.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            minusItemButton.heightAnchor.constraint(equalToConstant: 20),
            minusItemButton.widthAnchor.constraint(equalToConstant: 20)
        ])
    }
}

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
    var imageView:        UIImageView!
    var nameLabel:        UILabel!
    var priceLabel:       UILabel!
    var plusItemButton:   UIButton!
    var counter:          UILabel!
    var minusItemButton:  UIButton!
    
    
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
        contentView.contentMode = .scaleAspectFill
        
        setupImageView()
        setupNameLabel()
        setupPriceLabel()
        setupItemChangeButtons()
        setupCounterLabel()
        setupShadowCell()
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
        priceLabel.font = UIFont(name: "Quicksand-SemiBold", size: 22)
        priceLabel.textColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)

        contentView.addSubview(priceLabel)
    }
    
    private func setupItemChangeButtons() {
        plusItemButton  = HWButton().buildHWMenuDetailItemsButton(with: "plus")
        minusItemButton = HWButton().buildHWMenuDetailItemsButton(with: "minus")
        
        plusItemButton.backgroundColor = UIColor(red: 253/255, green: 201/255, blue: 9/255, alpha: 1)

        
        contentView.addSubview(plusItemButton)
        contentView.addSubview(minusItemButton)
    }
    
    private func setupCounterLabel() {
        counter = HWLabel().buildHWMenuDetailItemsLabel()
        
        contentView.addSubview(counter)
    }
    
    private func setupShadowCell() {
        layer.shadowOpacity  = 1
        layer.shadowRadius   = 40
        layer.shadowColor    = .init(red: 0, green: 0, blue: 0, alpha: 0.03)
        layer.shadowOffset   = .init(width: 0, height: 10)
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

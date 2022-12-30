//
//  CartCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import UIKit


//MARK: - CartCell

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
         nameLabel.font          = .quickSBold18
         return nameLabel
    }()
    
    var priceLabel: UILabel = {
       let priceLabel            = UILabel()
        priceLabel.contentMode   = .center
        priceLabel.font          = .quickSBold22
        priceLabel.textColor     = UIColor.specialOrange
        return priceLabel
    }()
    
    var itemPicker = ItemPicker()
    
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
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
        contentView.addSubview(itemPicker)

        
        setupShadow()
        setupCellLayout()
    }
}

//MARK: - Layout Extension

extension CartCell {
    
    private func setupCellLayout() {
        imageViewLayout()
        nameLabelLayout()
        priceLabelLayout()
        itemPickerLayout()
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
    
    private func itemPickerLayout() {
        itemPicker.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            itemPicker.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -30),
            itemPicker.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            itemPicker.heightAnchor.constraint(equalToConstant: 20),
            itemPicker.widthAnchor.constraint(equalToConstant: 20)
        ])
    }
    
}

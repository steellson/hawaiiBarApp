//
//  OrderCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 21.12.2022.
//

import UIKit

//MARK: - OrderCell

final class OrderCell: UICollectionViewCell {
    
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
    
    var counter: UILabel = {
        let nameLabel            = UILabel()
         nameLabel.contentMode   = .left
         nameLabel.font          = .quickReg16
         nameLabel.textColor     = .specialGray
         return nameLabel
    }()
    
    var priceLabel: UILabel = {
       let priceLabel            = UILabel()
        priceLabel.contentMode   = .center
        priceLabel.font          = .quickSBold22
        priceLabel.textColor     = UIColor.specialOrange
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
    
    public func configureCell(image: UIImage?, nameLabel: String, counter: String, priceLabel: String) {
        self.imageView.image = image
        self.nameLabel.text  = nameLabel
        self.counter.text    = counter
        self.priceLabel.text = priceLabel
    }
    
    private func setupCell() {
        contentView.backgroundColor    = .white
        contentView.layer.cornerRadius = 18
        contentView.contentMode        = .scaleAspectFill
        
        contentView.addSubview(imageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(counter)
        contentView.addSubview(priceLabel)
        
        setupShadow()
        setupCellLayout()
    }

}

//MARK: - Layout Extension

extension OrderCell {
    
    private func setupCellLayout() {
        imageViewLayout()
        nameLabelLayout()
        counterLayout()
        priceLabelLayout()
    }
    
    
    private func imageViewLayout() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            imageView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 15),
            imageView.widthAnchor.constraint(equalToConstant: 65),
            imageView.heightAnchor.constraint(equalToConstant: 65)
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
    
    private func counterLayout() {
        counter.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            counter.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10),
            counter.leftAnchor.constraint(equalTo: imageView.rightAnchor, constant: 15)
        ])
    }
    
    private func priceLabelLayout() {
        priceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            priceLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10),
            priceLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
            priceLabel.heightAnchor.constraint(equalToConstant: 30)
        ])
    }
}

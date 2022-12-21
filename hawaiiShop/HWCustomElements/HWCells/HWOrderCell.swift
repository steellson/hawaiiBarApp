//
//  HWOrderCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 21.12.2022.
//

import Foundation
import UIKit

final class HWOrderCell: UICollectionViewCell {
    
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
    
    var counter: UILabel = {
        let nameLabel            = UILabel()
         nameLabel.contentMode   = .left
         nameLabel.font          = UIFont(name: "Quicksand-Regular", size: 16)
         nameLabel.textColor     = UIColor(red: 0.325, green: 0.325, blue: 0.325, alpha: 1)
         return nameLabel
    }()
    
    var priceLabel: UILabel = {
       let priceLabel            = UILabel()
        priceLabel.contentMode   = .center
        priceLabel.font          = UIFont(name: "Quicksand-SemiBold", size: 22)
        priceLabel.textColor     = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        return priceLabel
    }()
   
    
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupCell()
    }
    

//MARK: - Setup Cell
    
    public func configureCell(image: UIImage?, nameLabel: String, counter: String, priceLabel: String) {
        self.imageView.image = image
        self.nameLabel.text  = nameLabel
        self.counter.text    = counter
        self.priceLabel.text = priceLabel
    }
    
    private func setupCell() {
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 18
        contentView.contentMode = .scaleAspectFill
        
        contentView.addSubview(imageView)
        contentView.addSubview(nameLabel)
        contentView.addSubview(counter)
        contentView.addSubview(priceLabel)
        
        setupShadowCell()
        setupCellLayout()
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

extension HWOrderCell {
    
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
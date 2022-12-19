//
//  HWOrdersHistoryCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import Foundation
import UIKit

final class HWOrdersHistoryCell: UICollectionViewCell {
    
    //MARK: UI Elements
    
    var idLabel: UILabel = {
        let label            = UILabel()
        label.font           = UIFont(name: "Quicksand-SemiBold", size: 18)
        label.textAlignment  = .left
        return label
    }()
    
    var statusLabel: UILabel = {
        let label                = UILabel()
        label.font               = UIFont(name: "Quicksand-Regular", size: 12)
        label.textAlignment      = .center
        label.textColor          = .white
        label.contentMode        = .center
        label.clipsToBounds      = true
        label.layer.cornerRadius = 5
        label.backgroundColor    = UIColor(red: 0.992, green: 0.79, blue: 0.074, alpha: 1)
        return label
    }()
    
    var orderTimeLabel: UILabel = {
        let label            = UILabel()
        label.font           = UIFont(name: "Quicksand-Regular", size: 16)
        label.textAlignment  = .left
        return label
    }()
    
    var imagesStackView: UIStackView = {
        let stack            = UIStackView()
        stack.axis           = .horizontal
        stack.contentMode    = .scaleAspectFit
        stack.distribution   = .fillEqually
        stack.clipsToBounds  = false
        return stack
    }()
    
    var moneyPriceLabel = HWLabel().buildOrdersHistoryPriceMoneyLabel()
    
    let forwardView: UIImageView = {
        let image        = UIImage(systemName: "chevron.forward")
        let view         = UIImageView(image: image!)
        view.contentMode = .scaleAspectFit
        view.tintColor   = .black
        return view
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
    
    func configureCell(idLabel: String, statusLabel: String, timeLabel: String) {
        self.idLabel.text          = idLabel
        self.statusLabel.text      = statusLabel
        self.orderTimeLabel.text   = timeLabel
    }
    
    func configureCelImageStackView(image: UIImage?) {
        let imageView         = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.tintColor   = .systemOrange
        imageView.image       = image
        imagesStackView.addArrangedSubview(imageView)
    }
    
    private func setupCell() {
        backgroundColor      = .white
        layer.cornerRadius   = 20
        
        contentView.addSubview(idLabel)
        contentView.addSubview(statusLabel)
        contentView.addSubview(orderTimeLabel)
        contentView.addSubview(imagesStackView)
        contentView.addSubview(moneyPriceLabel)
        contentView.addSubview(forwardView)
        
        setupShadowCell()
        setupLayout()
    }
    
    private func setupShadowCell() {
        layer.shadowOpacity  = 1
        layer.shadowRadius   = 40
        layer.shadowColor    = .init(red: 0, green: 0, blue: 0, alpha: 0.03)
        layer.shadowOffset   = .init(width: 0, height: 10)
    }
    
}


//MARK: - Layout Extension

extension HWOrdersHistoryCell {
    
    private func setupLayout() {
        idLabelLayout()
        statusLabelLayout()
        orderTimeLabelLayout()
        imageScrollViewLayout()
        moneyPriceLabelLayout()
        continueButtonLayout()
    }
    
    //MARK: - Methods
    
    private func idLabelLayout() {
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            idLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 15),
            idLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20)
        ])
    }
    
    private func statusLabelLayout() {
        statusLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            statusLabel.centerYAnchor.constraint(equalTo: idLabel.centerYAnchor),
            statusLabel.leftAnchor.constraint(equalTo: idLabel.rightAnchor, constant: 10),
            statusLabel.heightAnchor.constraint(equalToConstant: 15),
            statusLabel.widthAnchor.constraint(equalToConstant: 70)
        ])
    }
    
    private func orderTimeLabelLayout() {
        orderTimeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            orderTimeLabel.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 5),
            orderTimeLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
        ])
    }
    
    private func imageScrollViewLayout() {
        imagesStackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imagesStackView.topAnchor.constraint(equalTo: orderTimeLabel.bottomAnchor, constant: 8),
            imagesStackView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20),
            imagesStackView.heightAnchor.constraint(equalToConstant: 40),
            imagesStackView.widthAnchor.constraint(equalToConstant: contentView.frame.width / 2 + 20)
        ])
    }
    
    private func moneyPriceLabelLayout() {
        moneyPriceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            moneyPriceLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20),
            moneyPriceLabel.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -20),
        ])
    }
    
    private func continueButtonLayout() {
        forwardView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            forwardView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -12),
            forwardView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: -10),
            forwardView.widthAnchor.constraint(equalToConstant: 10),
            forwardView.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}

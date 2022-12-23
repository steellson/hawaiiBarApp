//
//  DeliveryAddressView.swift
//


import Foundation
import UIKit

final class DeliveryAddressView: UIView {
    
    //MARK - UI Elements
    
    var nameLabel    = UILabel()
    var addressLabel = UILabel()
    var phoneLabel   = UILabel()
    
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        configureView(nameLabel     : "Bob Rassel",
                      addressLabel  : "Berlin, Hauptbahnhof, Europaplatz 1.",
                      phoneLabel    : "+9986314518")
    }
    
    
    func configureView(nameLabel: String, addressLabel: String, phoneLabel: String) {
        self.nameLabel.text    = nameLabel
        self.addressLabel.text = addressLabel
        self.phoneLabel.text   = phoneLabel
    }
    
    private func setupView() {
        nameLabel.font    = UIFont(name: "Quicksand-SemiBold", size: 18)
        addressLabel.font = UIFont(name: "Quicksand-Regular", size: 16)
        phoneLabel.font   = UIFont(name: "Quicksand-Regular", size: 16)

        backgroundColor    = .white
        layer.cornerRadius = 18
        
        addSubview(nameLabel)
        addSubview(addressLabel)
        addSubview(phoneLabel)
        
        setupLayout()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



//MARK: Layout Extension

extension DeliveryAddressView {
    
    private func setupLayout() {
        nameLabelLayout()
        addressLabelLayout()
        phoneLabelLayout()
    }
    
    private func nameLabelLayout() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 12),
            nameLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            nameLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            nameLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20)
        ])
    }
    
    private func addressLabelLayout() {
        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            addressLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 15),
            addressLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            addressLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            addressLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20)
        ])
    }
    
    private func phoneLabelLayout() {
        phoneLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            phoneLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12),
            phoneLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            phoneLabel.rightAnchor.constraint(equalTo: rightAnchor, constant: -20),
            phoneLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 20)
        ])
    }
    
}

//
//  DeliveryAddressView.swift
//


import UIKit

//MARK: - DeliveryAdressView

final class DeliveryAddressView: MainView {
    
    //MARK - UI Elements
    
    var nameLabel    = UILabel()
    var addressLabel = UILabel()
    var phoneLabel   = UILabel()
    
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        configureView(nameLabel     : "Bob Rassel",
                      addressLabel  : "Berlin, Hauptbahnhof, Europaplatz 1.",
                      phoneLabel    : "+9986314518")
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//MARK: - Setup View
    
    func configureView(nameLabel: String, addressLabel: String, phoneLabel: String) {
        self.nameLabel.text    = nameLabel
        self.addressLabel.text = addressLabel
        self.phoneLabel.text   = phoneLabel
    }
    
}


//MARK: - MainView Extension

extension DeliveryAddressView {
    
    override func setupView() {
        super.setupView()
        
        nameLabel.font    = .quickSBold18
        addressLabel.font = .quickReg16
        phoneLabel.font   = .quickReg16

        backgroundColor    = .white
        layer.cornerRadius = 18
        
        addSubview(nameLabel)
        addSubview(addressLabel)
        addSubview(phoneLabel)
    }
    
    override func setupLayout() {
        super.setupLayout()
        
        nameLabelLayout()
        addressLabelLayout()
        phoneLabelLayout()
    }
    
}

//MARK: Layout Extension

extension DeliveryAddressView {
    
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


extension DeliveryAddressView: MainViewDelegate {
    func viewDidLoaded() {
        <#code#>
    }
    
    
}

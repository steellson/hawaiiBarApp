//
//  ItemPicker.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 30.12.2022.
//

import UIKit


//MARK: - ItemPicker

final class ItemPicker: MainView {
    
    //MARK: - Variables
    
    var stackView: UIStackView!
    
    let incrementButton: UIButton = {
        let button                = UIButton()
        button.tintColor          = .black
        button.layer.cornerRadius = 2
        button.backgroundColor    = .specialYellow
        button.setImage(UIImage(systemName: "plus"), for: .normal)
        return button
    }()
    
    let decrementButton: UIButton = {
        let button                = UIButton()
        button.tintColor          = .black
        button.layer.cornerRadius = 2
        button.backgroundColor    = .specialGray
        button.setImage(UIImage(systemName: "minus"), for: .normal)
        return button
    }()
    
    var countLabel: UILabel = {
        let label           = UILabel()
        label.textAlignment = .center
        return label
    }()
    
    var counter = 0
    
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

//MARK: - Setup View
    
    private func configureStackView() {
        stackView              = UIStackView(arrangedSubviews: [incrementButton, countLabel, decrementButton])
        stackView.axis         = .horizontal
        stackView.distribution = .fillEqually
        stackView.contentMode  = .center
        
        addSubview(stackView)
    }
    
    
//MARK: Buttons Action
    
    @objc private func buttonDidTapped(_ sender: UIButton?) {
        sender == incrementButton ? (counter += 1) : (counter -= 1)
    }
}


//MARK: - MainView Extension

extension ItemPicker {
    
    override func setupView() {
        super.setupView()
        
        countLabel.text = String(counter)

        incrementButton.addTarget(self, action: #selector(buttonDidTapped), for: .touchUpInside)
        decrementButton.addTarget(self, action: #selector(buttonDidTapped), for: .touchUpInside)
        
    }
    
    override func setupLayout() {
        super.setupLayout()
        
        configureStackView()
        stackViewLayout()
    }
}


//MARK: - Layout Extension

extension ItemPicker {
    
    private func stackViewLayout() {
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: leftAnchor),
            stackView.rightAnchor.constraint(equalTo: rightAnchor),
        ])
    }
}

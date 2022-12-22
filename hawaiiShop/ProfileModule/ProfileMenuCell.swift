//
//  ProfileMenuCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 22.12.2022.
//

import Foundation
import UIKit

final class ProfileMenuCell: UICollectionViewCell {
    
    //MARK: UI Elements
    
    var sectionLabel: UILabel = {
        let label            = UILabel()
        label.font           = UIFont(name: "Quicksand-SemiBold", size: 18)
        label.textAlignment  = .left
        return label
    }()
    
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
    
    func configureCell(sectionLabel: String) {
        self.sectionLabel.text  = sectionLabel
    }
    
    private func setupCell() {
        backgroundColor      = .white
        layer.cornerRadius   = 20
        
        contentView.addSubview(sectionLabel)
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

extension ProfileMenuCell {
    
    private func setupLayout() {
        sectionLabelLayout()
        forwardViewLayout()
    }
    
    //MARK: - Methods
    
    private func sectionLabelLayout() {
        sectionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            sectionLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 25),
            sectionLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
    
    private func forwardViewLayout() {
        forwardView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            forwardView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -25),
            forwardView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor)
        ])
    }
}

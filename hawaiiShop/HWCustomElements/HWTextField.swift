//
//  HWTextField.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 25.11.2022.
//

import Foundation
import UIKit

final class HWTextField: UITextField {
    
    public func buildHWLoginField() -> UITextField {
        let field = UITextField()
        field.placeholder = "   Phone number"
        field.layer.cornerRadius = 20
        field.layer.borderWidth = 0.5
        field.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
        field.contentMode = .scaleAspectFit
        return field
    }
    
    public func buildHWPasswordSMSField() -> UITextField {
        let field = UITextField()
        field.placeholder = "   SMS code"
        field.layer.cornerRadius = 20
        field.layer.borderWidth = 0.5
        field.layer.borderColor = .init(red: 0, green: 0, blue: 0, alpha: 1)
        field.contentMode = .left
        
        let button = HWButton().buildHWFieldButton()
        
        field.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.rightAnchor.constraint(equalTo: field.rightAnchor, constant: -8),
            button.centerYAnchor.constraint(equalTo: field.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 120),
            button.heightAnchor.constraint(equalToConstant: 35)
        ])
        return field
    }
    
    public func buildHWSearchField() -> UITextField {
        let field = UITextField()
        field.backgroundColor = UIColor(red: 239/255, green: 238/255, blue: 238/255, alpha: 1)
        field.placeholder = "       Search"
        field.layer.cornerRadius = 20
        field.contentMode = .left

        let iconView = UIImageView(image: UIImage(systemName: "magnifyingglass"))

        field.addSubview(iconView)
        iconView.tintColor = .black
        iconView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            iconView.leftAnchor.constraint(equalTo: field.leftAnchor, constant: 5),
            iconView.centerYAnchor.constraint(equalTo: field.centerYAnchor),
            iconView.widthAnchor.constraint(equalToConstant: 25),
            iconView.heightAnchor.constraint(equalToConstant: 25)
        ])
        return field
    }

}

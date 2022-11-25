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

}

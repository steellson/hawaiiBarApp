//
//  UITextField+Extension.swift
//

import UIKit

extension UITextField {
    
    
//MARK: Convenience methods
    
    public func buildLoginField() -> UITextField {
        let field                = UITextField()
        field.placeholder        = "E-Mail"
        field.layer.cornerRadius = 20
        field.layer.borderWidth  = 0.5
        field.layer.borderColor  = .init(red: 0, green: 0, blue: 0, alpha: 1)
        
        let spacer              = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: field.frame.height))
        field.leftView          = spacer
        field.leftViewMode      = .always
        
        return field
    }
    
    
    public func buildPasswordSMSField() -> UITextField {
        let field                = UITextField()
        field.placeholder        = "Send code"
        field.layer.cornerRadius = 20
        field.layer.borderWidth  = 0.5
        field.layer.borderColor  = .init(red: 0, green: 0, blue: 0, alpha: 1)
        field.contentMode        = .left
        
        let spacer               = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: field.frame.height))
        field.leftView           = spacer
        field.leftViewMode       = .always
        
        let button              = UIButton().buildFieldButton()
        field.addSubview(button)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button.rightAnchor.constraint(equalTo: field.rightAnchor, constant: -9),
            button.centerYAnchor.constraint(equalTo: field.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 120),
            button.heightAnchor.constraint(equalToConstant: 35)
        ])
        return field
    }
    
    
    public func buildSearchField() -> UITextField {
        let field                = UITextField()
        field.backgroundColor    = UIColor(red: 239/255, green: 238/255, blue: 238/255, alpha: 1)
        field.placeholder        = "Search"
        field.layer.cornerRadius = 20
        field.contentMode        = .left

        let spacer              = UIView(frame: CGRect(x: 0, y: 0, width: 50, height: field.frame.height))
        field.leftView          = spacer
        field.leftViewMode      = .always
        
        let iconView            = UIImageView(image: UIImage(systemName: "magnifyingglass"))
        iconView.tintColor      = .specialGray
        field.addSubview(iconView)
        iconView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            iconView.leftAnchor.constraint(equalTo: field.leftAnchor, constant: 12),
            iconView.centerYAnchor.constraint(equalTo: field.centerYAnchor),
            iconView.widthAnchor.constraint(equalToConstant: 25),
            iconView.heightAnchor.constraint(equalToConstant: 25)
        ])
        return field
    }

}

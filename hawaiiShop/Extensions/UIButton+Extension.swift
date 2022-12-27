//
//  UIButton+Extension.swift
//

import UIKit

extension UIButton {
    
    convenience init(_ title: String) {
        self.init()
        
        backgroundColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        layer.cornerRadius = 22
        setTitle(title, for: .normal)
        titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
    }

    
//MARK: - Convenience methods
    
    public func buildFieldButton() -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = 16
        button.backgroundColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        button.setTitle("Send code", for: .normal)
        button.titleLabel?.font = .quickMed18
        return button
    }
    
    public func buildHelpButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("I need a help", for: .normal)
        button.setTitleColor(UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Quicksand-SemiBold", size: 18)
        return button
    }
    
    public func buildMenuDetailItemsButton(with systemImageName: String) -> UIButton {
        let button = UIButton()
        button.setImage(UIImage(systemName: systemImageName), for: .normal)
        button.tintColor = .black
        button.layer.cornerRadius = 2
        button.backgroundColor = isSelected ? UIColor(red: 253/255, green: 201/255, blue: 9/255, alpha: 1) :
                                             UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        return button
    }

    public func buildChangeButton() -> UIButton {
        let button = UIButton()
        button.setTitle("change", for: .normal)
        button.setTitleColor(UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Quicksand-Medium", size: 16)
        return button
    }

}

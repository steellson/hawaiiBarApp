//
//  HWButton.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 25.11.2022.
//

import Foundation
import UIKit

final class HWButton: UIButton {
    
    public func buildHWEnterButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        button.layer.cornerRadius = 16
        button.setTitle("Log in", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return button
    }
    
    public func buildHWHelpButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("I need a help", for: .normal)
        button.setTitleColor(UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Quicksand-SemiBold", size: 18)
        return button
    }
    
    public func buildHWFieldButton() -> UIButton {
        let button = UIButton()
        button.layer.cornerRadius = 14
        button.backgroundColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        button.setTitle("Send code", for: .normal)
        button.titleLabel?.font = UIFont(name: "Quicksand-Medium", size: 16)
        return button
    }
    
    public func buildHWMenuDetailItemsButton(with systemImageName: String) -> UIButton {
        let button = UIButton()
        button.setImage(UIImage(systemName: systemImageName), for: .normal)
        button.tintColor = .black
        button.layer.cornerRadius = 2
        button.backgroundColor = isSelected ? UIColor(red: 253/255, green: 201/255, blue: 9/255, alpha: 1) :
                                             UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
        return button
    }
    
    public func buildHWMenuDetailAddButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        button.layer.cornerRadius = 16
        button.setTitle("Add", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return button
    }
    
    public func buildHWCreateAnOrderButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        button.layer.cornerRadius = 22
        button.setTitle("Create an order", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return button
    }
    
    public func buildHWCompleteOrderButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        button.layer.cornerRadius = 22
        button.setTitle("Complete order", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return button
    }
    
    public func buildHWDeliveryChangeButton() -> UIButton {
        let button = UIButton()
        button.setTitle("change", for: .normal)
        button.setTitleColor(UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1), for: .normal)
        button.titleLabel?.font = UIFont(name: "Quicksand-Medium", size: 16)
        return button
    }
    
    public func buildHWDeliveryProceedToPaymentButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        button.layer.cornerRadius = 22
        button.setTitle("Proceed to payment", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return button
    }
    
    public func buildHWCompletePaymentButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        button.layer.cornerRadius = 22
        button.setTitle("Complete", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        return button
    }
}

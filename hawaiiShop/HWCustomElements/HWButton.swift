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
        button.setTitle("Log in", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: .bold)
        button.layer.cornerRadius = 16
        return button
    }
    
    public func buildHWHelpButton() -> UIButton {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("I need a help", for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 16, weight: .medium)
        button.setTitleColor(UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1), for: .normal)
        return button
    }
}

//
//  HWLabel.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 25.11.2022.
//

import Foundation
import UIKit

final class HWLabel: UILabel {
    
    public func buildHWAuthorizationLabel() -> UILabel {
        let label = UILabel()
        label.font = UIFont(name: "Quicksand-Bold", size: 24)
        label.textAlignment = .center
        label.contentMode = .center
        label.numberOfLines = 0
        label.text = "Authorization"
        return label
    }
    
    public func buildHWMenuLabel() -> UILabel {
        let label = UILabel()
        label.font = UIFont(name: "Quicksand-Bold", size: 20)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.text = "Menu"
        return label
    }
}

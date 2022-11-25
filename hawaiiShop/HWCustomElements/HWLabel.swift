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
        label.font = .systemFont(ofSize: 28)
        label.textAlignment = .center
        label.contentMode = .center
        label.numberOfLines = 0
        label.text = "Authorization"
        return label
    }
}

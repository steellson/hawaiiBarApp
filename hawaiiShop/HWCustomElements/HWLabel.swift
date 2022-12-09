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
    
    public func buildHWMenuDetailTitleLabel() -> UILabel {
        let label = UILabel()
        label.font = UIFont(name: "Quicksand-Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.text = "Cherry pizza"
        return label
    }
    
    public func buildHWMenuDetailDescriptionLabel() -> UILabel {
        let label = UILabel()
        label.font = UIFont(name: "Quicksand", size: 18)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.text = "Crunchy dough, cherry tomato, \nProsciutto, spinat and mozarella cheese"
        return label
    }
    
    public func buildHWMenuDetailWeightLabel() -> UILabel {
        let label = UILabel()
        label.font = UIFont(name: "Quicksand-SemiBold", size: 18)
        label.textColor = UIColor(red: 0.325, green: 0.325, blue: 0.325, alpha: 1)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.text = "630 g"
        return label
    }
    
    public func buildHWMenuDetailPriceLabel() -> UILabel {
        let label = UILabel()
        label.font = UIFont(name: "Quicksand-SemiBold", size: 28)
        label.textColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        label.textAlignment = .left
        label.numberOfLines = 0
        label.text = "17 $"
        return label
    }
}

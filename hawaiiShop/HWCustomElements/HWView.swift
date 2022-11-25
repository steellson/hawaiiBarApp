//
//  HWView.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 25.11.2022.
//

import Foundation
import UIKit

final class HWView: UIView {
    
    public func buildHWAuthView() -> UIView {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = .zero
        view.layer.shadowRadius = 1
        return view
    }
    
    public func buildHWOrangeView() -> UIView {
        let view = UIView()
        view.backgroundColor = UIColor(red: 255/255, green: 82/255, blue: 9/255, alpha: 1)
        return view
    }
    
}

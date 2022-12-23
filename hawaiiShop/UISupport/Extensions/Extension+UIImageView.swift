//
//  Extension+UIImageView.swift
//


import Foundation
import UIKit

extension UIImageView {
    
    convenience init(_ image: UIImage?, _ contentMode: UIView.ContentMode, _ cTBounds: Bool) {
        self.init()
        self.image         = image
        self.contentMode   = contentMode
        self.clipsToBounds = cTBounds
        layer.cornerRadius = 18
        backgroundColor    = .none
    }
}
    

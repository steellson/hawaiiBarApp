//
//  UIImageView+Extension.swift
//

import UIKit

extension UIImageView {
    
    convenience init(_ contentMode: UIView.ContentMode, _ cTBounds: Bool) {
        self.init()
        self.contentMode   = contentMode
        self.clipsToBounds = cTBounds
        layer.cornerRadius = 18
        backgroundColor    = .none
    }
    
    //
    convenience init(_ image: UIImage?, _ contentMode: UIView.ContentMode, _ cTBounds: Bool) {
        self.init()
        self.contentMode   = contentMode
        self.clipsToBounds = cTBounds
        self.image         = image
        layer.cornerRadius = 18
        backgroundColor    = .none
    }
}
    


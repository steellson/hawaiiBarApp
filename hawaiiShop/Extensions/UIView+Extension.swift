//
//  UIView+Extension.swift
//

import UIKit

extension UIView {
    
    convenience init(_ bColor: UIColor) {
        self.init()
        
        setupShadow()
        backgroundColor    = .white
        layer.cornerRadius = 30
    }
    
    
//MARK: - Convenience methods
    
    func setupShadow() {
        layer.shadowOpacity  = 1
        layer.shadowRadius   = 40
        layer.shadowColor    = .init(red: 0, green: 0, blue: 0, alpha: 0.03)
        layer.shadowOffset   = .init(width: 0, height: 10)
    }
}

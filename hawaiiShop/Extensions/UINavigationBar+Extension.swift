//
//  UINavigationBar+Extension.swift
//

import UIKit

public enum NavBarSide {
    case leftSide
    case rightSide
}

extension UINavigationBar {
    
    public func setupNavigationBar(with title: String, on vc: UIViewController) {
        vc.navigationItem.title = title
        
        vc.navigationController?.navigationBar.standardAppearance.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont.quickBold20,
            NSAttributedString.Key.foregroundColor: UIColor.navBarIcons.cgColor
        ]
    }
    
    public func addNavBarButton(with image: UIImage, target: Any?, action: Selector, where: NavBarSide, on vc: UIViewController) {
        let leftBarItem = UIBarButtonItem(image: image, style: .plain, target: target, action: action)
        vc.navigationItem.leftBarButtonItem = leftBarItem
        
        let rightBarItem = UIBarButtonItem(image: image, style: .plain, target: target, action: action)
        vc.navigationItem.rightBarButtonItem = rightBarItem
        //vc.navigationItem.leftBarButtonItem?.tintColor = .navBarIcons
    }
    
}

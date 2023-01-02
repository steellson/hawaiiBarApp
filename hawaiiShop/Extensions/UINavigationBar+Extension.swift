//
//  UINavigationBar+Extension.swift
//

import UIKit

//MARK: - NavBar side enum

public enum NavBarSide {
    case leftSide
    case rightSide
}

//MARK: - Advanced setup methods

extension UINavigationBar {
    
    public func setupNavigationBar(with title: String, on vc: UIViewController) {
        vc.navigationItem.title = title
        
        vc.navigationController?.navigationBar.standardAppearance.titleTextAttributes = [
            NSAttributedString.Key.font: UIFont.quickBold20
        ]
    }
    
    public func addNavBarButton(with image: UIImage, target: Any?, action: Selector, side: NavBarSide, on vc: UIViewController) {
        switch side {
        case .leftSide:
            let leftBarItem = UIBarButtonItem(image: image, style: .plain, target: target, action: action)
            vc.navigationItem.leftBarButtonItem = leftBarItem
            vc.navigationItem.leftBarButtonItem?.tintColor = .navBarIcons
        case .rightSide:
            let rightBarItem = UIBarButtonItem(image: image, style: .plain, target: target, action: action)
            vc.navigationItem.rightBarButtonItem = rightBarItem
            vc.navigationItem.rightBarButtonItem?.tintColor = .navBarIcons
        }
    }
    
}

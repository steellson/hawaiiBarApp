//
//  Extension+UINavigationBar.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation
import UIKit

extension UINavigationBar {
    
    public func setupNavigationBar(_ vc: UIViewController, _ title: String) {
        let leftBarItem = UIBarButtonItem(image: UIImage(systemName: "chevron.backward"), style: .plain, target: self, action: nil)
        
        vc.navigationItem.leftBarButtonItem = leftBarItem
        vc.navigationItem.leftBarButtonItem?.tintColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6)
        
        vc.navigationItem.title = "My profile"
        vc.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.quickBold20]
    }
    
}

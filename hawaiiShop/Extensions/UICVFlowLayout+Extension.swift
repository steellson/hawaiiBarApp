//
//  UICollectionViewFlowLayout+Extension.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import UIKit


extension UICollectionViewFlowLayout {
    
    
    //MARK: - FlowLayout setup method
    
    public func buildFlowLayout(_ direction: UICollectionView.ScrollDirection) -> UICollectionViewFlowLayout {
        let flowLayout                = UICollectionViewFlowLayout()
        flowLayout.scrollDirection    = direction
        return flowLayout
    }
}

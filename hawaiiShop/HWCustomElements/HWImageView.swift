//
//  HWImageView.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 09.12.2022.
//

import Foundation
import UIKit

final class HWImageView: UIImageView {
    
    public func buildHWMenuDetailImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "pizza")
        return imageView
    }
    
    public func buildHWCartEmptyImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.clipsToBounds = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "basket")
        return imageView
    }
    
    public func buildHWOrdersHistoryEmptyImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.clipsToBounds = false
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "search")
        return imageView
    }
}

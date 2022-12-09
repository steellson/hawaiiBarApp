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
        return imageView
    }
    
}

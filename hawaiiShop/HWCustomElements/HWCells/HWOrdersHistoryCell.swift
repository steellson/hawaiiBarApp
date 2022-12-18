//
//  HWOrdersHistoryCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 18.12.2022.
//

import Foundation
import UIKit

final class HWOrdersHistoryCell: UICollectionViewCell {
    
    //MARK: UI Elements
    
    
    
    
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupCell()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
//MARK: - Setup Cell
    
    
    private func setupCell() {
        backgroundColor      = .white
        layer.cornerRadius   = 20
        
        setupShadowCell()
        setupLayout()
    }
    
    private func setupShadowCell() {
        layer.shadowOpacity  = 1
        layer.shadowRadius   = 40
        layer.shadowColor    = .init(red: 0, green: 0, blue: 0, alpha: 0.03)
        layer.shadowOffset   = .init(width: 0, height: 10)
    }
    
}


//MARK: - Layout Extension

extension HWOrdersHistoryCell {
    
    private func setupLayout() {
        
    }
}

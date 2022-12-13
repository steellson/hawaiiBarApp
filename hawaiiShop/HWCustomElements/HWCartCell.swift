//
//  HWCartCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import Foundation
import UIKit

final class HWCartCell: UICollectionViewCell {
    
    //MARK: - UI Elements
    
    
    
    
//MARK: - Init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupCell()
    }
    

//MARK: - Setup Cell
    
    private func setupCell() {
        contentView.backgroundColor = .white
        contentView.layer.cornerRadius = 18
        
    }
    
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

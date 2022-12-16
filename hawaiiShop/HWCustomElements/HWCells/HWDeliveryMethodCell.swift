//
//  HWDeliveryMethodCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 15.12.2022.
//

import Foundation
import UIKit

final class DeliveryMethodCell: UITableViewCell {

    
    
    
//MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "deliveryMethodCell")
        
        setupCell()
    }
    
    
//MARK: - Setup Cell
    
    func configureCell(text: String) {
        var configuration    = defaultContentConfiguration()
        configuration.text   = text
        
        self.contentView.tintColor = .blue
        
    }
    

    
    private func setupCell() {
        var configuration    = defaultContentConfiguration()
        configuration.image  = UIImage(systemName: "circle")
        configuration.text   = "Payment Method"
        
        configuration.imageProperties.tintColor = .red
        
        setupLayout()
    }
    
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//MARK: - Layout Extesion

extension DeliveryMethodCell {
    
    func setupLayout() {
        
    }
    
}

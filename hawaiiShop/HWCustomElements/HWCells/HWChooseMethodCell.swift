//
//  HWDeliveryMethodCell.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 15.12.2022.
//

import Foundation
import UIKit

final class HWChooseMethodCell: UITableViewCell {

    //MARK: UI Elements
    
    var pickerView: UIImageView!
    var label:      UILabel!
    
    
//MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: "deliveryMethodCell")
        
        setupCell()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
//MARK: - Setup Cell
    
    func configureCell(image: UIImage?,text: String) {
        self.label.text       = text
        self.pickerView.image = image
    }
    
    private func setupCell() {
        pickerView             = UIImageView()
        pickerView.contentMode = .scaleAspectFit
        pickerView.tintColor   = .orange
        
        label                  = UILabel()
        label.font             = UIFont(name: "Quicksand-Medium", size: 16)
        label.textAlignment    = .left
        
        contentView.addSubview(pickerView)
        contentView.addSubview(label)
        
        setupLayout()
    }
  
}


//MARK: - Layout Extesion

extension HWChooseMethodCell {
    
    private func setupLayout() {
        pickerViewLayout()
        labelLayout()
    }
    
    private func pickerViewLayout() {
        pickerView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pickerView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 25),
            pickerView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            pickerView.widthAnchor.constraint(equalToConstant: 10),
            pickerView.heightAnchor.constraint(equalToConstant: 10)
        ])
    }
    
    private func labelLayout() {
        label.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            label.leftAnchor.constraint(equalTo: pickerView.leftAnchor, constant: 30),
            label.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -10),
            label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            label.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
}

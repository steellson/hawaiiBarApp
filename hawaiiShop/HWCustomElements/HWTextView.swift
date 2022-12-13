//
//  HWTextView.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 13.12.2022.
//

import Foundation
import UIKit

final class HWTextView: UITextView {
    
    public func buildHWCartCommentTextView() -> UITextView {
        let textView                 = UITextView()
        textView.layer.cornerRadius  = 18
        textView.backgroundColor     = .white
        textView.text                = "    Your comment..."
        textView.textColor           = .lightGray
        textView.textAlignment       = .left
        textView.font                = UIFont(name: "Quicksand", size: 15)
        return textView
    }
}

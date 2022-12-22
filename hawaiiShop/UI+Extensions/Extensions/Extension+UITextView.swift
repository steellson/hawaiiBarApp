//
//  HWTextView.swift
//

import Foundation
import UIKit

extension UITextView {
    
    public func buildCartCommentTextView() -> UITextView {
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

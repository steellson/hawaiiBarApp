//
//  AuthorizationViewController.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.11.2022.
//

import UIKit

//MARK: AuthorizationViewImpl

final class AuthorizationView: MainView {
    
    var presenter: AuthorizationPresenterProtocol!
    
    //MARK: - UI Elements
    
    let authorizationLabel = UILabel(.quickBold24, .black, .center, "Authorization")
    let authView           = UIView(.specialOrange)
    
    lazy var authorizationModeSegment: UISegmentedControl = {
        let items               = ["Sign Up", "Login"]
        let segment             = UISegmentedControl(items: items)
        segment.backgroundColor = .white
        segment.isMomentary     = false
        segment.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.quickSBold18,
                                        NSAttributedString.Key.foregroundColor: UIColor.specialOrange], for: .normal)
        return segment
    }()
    
    let loginField       = UITextField().buildLoginField()
    let passwordField    = UITextField().buildPasswordSMSField()
    let enterButton      = UIButton("Log in")
    let helpButton       = UIButton().buildHelpButton()
    let bottomOrangeView = UIView(.specialOrange)
    
    
//MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}


//MARK: MainView Extension

extension AuthorizationView {
    
    override func setupView() {
        super.setupView()
        
        view.addSubview(authorizationLabel)
        view.addSubview(authView)
        view.addSubview(authorizationModeSegment)
        view.addSubview(loginField)
        view.addSubview(passwordField)
        view.addSubview(enterButton)
        view.addSubview(helpButton)
        view.addSubview(bottomOrangeView)
    }
    
}

//MARK: MainViewProtocol Extension

extension AuthorizationView: MainViewProtocol {
    
    func success() {
        //
    }
    
    func failure(error: Error) {
        print(error.localizedDescription)
    }
    
 
}

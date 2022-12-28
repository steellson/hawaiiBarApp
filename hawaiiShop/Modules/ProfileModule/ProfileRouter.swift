//
//  ProfileRouter.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 28.12.2022.
//

import UIKit

//MARK: - ProfileRouter Protocol

protocol ProfileRouterProtocol: Router {
    var moduleBuilder        : ProfileModuleBuilderProtocol? { get set }
    init(navigationController: UINavigationController?, moduleBuilder: ProfileModuleBuilderProtocol?)
    
}


//MARK: - ProfileRouterImpl

final class ProfileRouter: ProfileRouterProtocol {

    //MARK: - Variables
    
    var navigationController: UINavigationController?
    var moduleBuilder       : ProfileModuleBuilderProtocol?
    
    
//MARK: - Init
    
    required init(navigationController: UINavigationController?, moduleBuilder: ProfileModuleBuilderProtocol?) {
        self.navigationController = navigationController
        self.moduleBuilder        = moduleBuilder
    }
    
    
//MARK: - Methods




}

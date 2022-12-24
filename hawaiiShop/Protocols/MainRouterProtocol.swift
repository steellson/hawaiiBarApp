//
//  RouterProtocol.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation
import UIKit

//MARK: Router Protocol

protocol Router {
    var navigationController: UINavigationController? { get set }
    var moduleBuilder       : MainModuleBuilderProtocol? { get set }
    init(navigationController: UINavigationController?, moduleBuilder: MainModuleBuilderProtocol?)
}

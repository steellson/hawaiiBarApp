//
//  ModuleBuilderProtocol.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation
import UIKit


protocol ModuleBuilderProtocol {
    func buildMainViewController(router: RouterProtocol) -> UIViewController
    func buildMenuViewController(router: RouterProtocol, menuCardItems: [MenuCard]?) -> UIViewController
    func buildMenuDetailViewController(router: RouterProtocol, menuDetailCard: MenuDetailCard) -> UIViewController
}

//
//  RouterProtocol.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation
import UIKit


protocol Router {
    var navigationController: UINavigationController? { get set }
    var moduleBuilder       : ModuleBuilderProtocol? { get set }
}

protocol RouterProtocol: Router {
    func initialView()
    func showMenuViewController(_ menuCardItems: [MenuCard]?)
    func showMenuDetailViewController(_ menuDetailCard: MenuDetailCard?)
    func goBack()
}

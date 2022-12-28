//
//  ModuleBuilderProtocol.swift
//  hawaiiShop
//
//  Created by Andrey Pochepaev on 23.12.2022.
//

import Foundation


//MARK: - ModulesType Enum

enum ModulesType {
    case authorization
    case main
    case cart
    case order
    case ordersHistory
    case delivery
    case payment
    case profile
}


//MARK: - ModuleBuilder Ptorocol

protocol ModuleBuilder {
    var typeOfCurrentModule: ModulesType { get }
}

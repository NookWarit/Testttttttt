//
//  TableDynamicConfiguration.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class TableDynamicConfiguration {
    static let shared: TableDynamicConfiguration = TableDynamicConfiguration()
    
    func configure(_ viewController: TableDynamicViewController) {
        let interactor = TableDynamicInteractor()
        let presenter = TableDynamicPresenter()
        let router = TableDynamicRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}

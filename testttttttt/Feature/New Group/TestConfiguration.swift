//
//  TestConfiguration.swift
//  testttttttt
//
//  Created by Nook iOS on 7/6/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

class TestConfiguration {
    static let shared: TestConfiguration = TestConfiguration()
    
    func configure(_ viewController: TestViewController) {
        let interactor = TestInteractor()
        let presenter = TestPresenter()
        let router = TestRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
}

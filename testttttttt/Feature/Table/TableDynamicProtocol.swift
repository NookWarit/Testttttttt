//
//  TableDynamicProtocol.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

//MARK: ViewController
protocol TableDynamicDisplayLogic: class {
    func displaySomething(viewModel: TableDynamic.Something.ViewModel)
}

//MARK: Interactor
protocol TableDynamicBusinessLogic {
    func doSomething(request: TableDynamic.Something.Request)
}

//MARK: Presenter
protocol TableDynamicPresentationLogic {
    func presentSomething(response: TableDynamic.Something.Response)
}

//MARK: Routable
@objc protocol TableDynamicRoutingLogic {

}

//MARK: DataStore
protocol TableDynamicDataStore {

}

//MARK: DataPassing
protocol TableDynamicDataPassing {
    var dataStore: TableDynamicDataStore? { get }
}

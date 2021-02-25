//
//  MainProtocol.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import Foundation

//MARK: ViewController
protocol MainDisplayLogic: class {
    func displaySomething(viewModel: Main.Something.ViewModel)
}

//MARK: Interactor
protocol MainBusinessLogic {
    func doSomething(request: Main.Something.Request)
}

//MARK: Presenter
protocol MainPresentationLogic {
    func presentSomething(response: Main.Something.Response)
}

//MARK: Routable
@objc protocol MainRoutingLogic {

}

//MARK: DataStore
protocol MainDataStore {

}

//MARK: DataPassing
protocol MainDataPassing {
    var dataStore: MainDataStore? { get }
}

//
//  TableDynamicInteractor.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class TableDynamicInteractor {
    var presenter: TableDynamicPresentationLogic?
    var worker: TableDynamicWorker?

    required init() {
        worker = TableDynamicWorker()
    }
}

extension TableDynamicInteractor: TableDynamicDataStore, TableDynamicBusinessLogic {
    func doSomething(request: TableDynamic.Something.Request) {
        worker?.doSomeWork()
        
        let response = TableDynamic.Something.Response()
        presenter?.presentSomething(response: response)
    }
}

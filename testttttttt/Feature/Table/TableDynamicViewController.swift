//
//  TableDynamicViewController.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//  Copyright (c) 2564 BE ___ORGANIZATIONNAME___. All rights reserved.
//

import UIKit

class TableDynamicViewController: UIViewController {
    // MARK: @IBOutlet
    @IBOutlet weak var tableView: UITableView!
    var interactor: TableDynamicBusinessLogic?
    var router: (NSObjectProtocol & TableDynamicRoutingLogic & TableDynamicDataPassing)?
    var data = ["sfjioawdgnfiosngionaerngibnskzdngoivnaesidgnviwaonsidgnviwnievwdsvwdv","dsfjijdsif","sdfjiosjigidsgisdigidsigijdifgijdfiojgidfgjidfgidijgidfjgjeajrgoieigkndfkgkjiojfdkjgnvndfkvineigriodjklvjiofsjdkgniejvidjgjoengi"]
    let tableViewCell = "TableViewCell"
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
      super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
      configure()
    }
    
    required init?(coder aDecoder: NSCoder) {
      super.init(coder: aDecoder)
      configure()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        doSomething()
        setup()
    }
    
    // MARK: Do something
    
    func doSomething() {
        let request = TableDynamic.Something.Request()
        interactor?.doSomething(request: request)
    }
}

//MARK: Setup & Configuration
extension TableDynamicViewController {
    private func setup() {
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: tableViewCell)
        
    }
    
    private func configure() {
        TableDynamicConfiguration.shared.configure(self)
    }
}

extension TableDynamicViewController : TableDynamicDisplayLogic {
    func displaySomething(viewModel: TableDynamic.Something.ViewModel) {
        
    }
}

extension TableDynamicViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: tableViewCell, for: indexPath) as! TableViewCell
    
        cell.configureCell(textLabel: data[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return UITableView.automaticDimension
        }
    
    
}

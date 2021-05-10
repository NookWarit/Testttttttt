//
//  SearchBarTableViewCell.swift
//  testttttttt
//
//  Created by Foodstory on 21/4/2564 BE.
//

import UIKit

class SearchBarTableViewCell: UITableViewCell {
    @IBOutlet weak var searchBarView: SearchBarComponent!

    override func awakeFromNib() {
        super.awakeFromNib()
//        searchBarView.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell() {
//        searchBarView.searchAction = { (searchText) in
//            print(searchText)
//        }
//        
//        searchBarView.deleteAction = {
//            print("delete")
//        }
    }
}

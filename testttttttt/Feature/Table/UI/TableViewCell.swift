//
//  TableViewCell.swift
//  testttttttt
//
//  Created by Foodstory on 25/2/2564 BE.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(textLabel: String) {
        title.text = textLabel
    }
    
}

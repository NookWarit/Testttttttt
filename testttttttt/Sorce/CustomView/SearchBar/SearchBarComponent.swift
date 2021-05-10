//
//  SearchBarComponent.swift
//  testttttttt
//
//  Created by Foodstory on 21/4/2564 BE.
//

import UIKit

class SearchBarComponent: UISearchBar, UISearchBarDelegate {
//    @objc var searchAction: ((_ searchText: String) -> Void)?
//    @objc var deleteAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
    func setup() {
//        self.delegate = self
        
    }
    
    func configureUISearchBar(textColor: UIColor, backColor: UIColor) {
//        UIGraphicsBeginImageContext(bounds.size)
//        backColor.setFill()
//        UIBezierPath(rect: bounds).fill()
//        setBackgroundImage(UIGraphicsGetImageFromCurrentImageContext()!, for: UIBarPosition.any, barMetrics: .default)
//
//        let newBounds = bounds.insetBy(dx: 0, dy: 10)
//        fieldColor.setFill()
//        let path = UIBezierPath(roundedRect: newBounds, cornerRadius: 10)
//
//        if let borderColor = borderColor {
//            borderColor.setStroke()
//            path.lineWidth = 1 / UIScreen.main.scale
//            path.stroke()
//        }
//
//        path.fill()
//        setSearchFieldBackgroundImage(UIGraphicsGetImageFromCurrentImageContext()!, for: .normal)
//
//        UIGraphicsEndImageContext()
        self.layer.cornerRadius = 20
        self.backgroundColor  = backColor
        self.searchTextField.textColor = textColor
        
    }
    
//    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
//        deleteAction?()
//    }
//
//    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
//        searchAction?(searchText)
//    }
//
//    func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
//        self.becomeFirstResponder()
//    }
}

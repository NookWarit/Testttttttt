//
//  ToastNotificationView.swift
//  FoodStory_Owner
//
//  Created by Foodstory on 7/4/2564 BE.
//  Copyright © 2564 BE LivingMobile. All rights reserved.
//

import Foundation
import UIKit
//protocol ToastNotificationDelegate: class {
//    func errorBtnDidTap()
//}

public class ToastNotificationView: UIView {
    // MARK: - IBOutlet
    @IBOutlet weak private var contentView: UIView!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var messagesLabel: UILabel!
    @IBOutlet weak var viewBg: UIView!
    @IBOutlet weak var btn: UIButton!
    @IBOutlet weak var btnWidth: NSLayoutConstraint!
    @IBOutlet weak var btnWithText: NSLayoutConstraint!
    
    // MARK: - Variable
//    weak var delegate: ToastNotificationDelegate?
    @objc var clickAction: (() -> Void)?
    
    
    // MARK: - Life Cycle
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    public override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setup()
    }
    public override func awakeFromNib() {
        super.awakeFromNib()
    }
    func setup() {
        contentView = loadViewFromNib()
        contentView.frame = bounds
        contentView.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        addSubview(contentView)
        contentView.layer.cornerRadius = 20 //self.contentView.bounds.height / 3
        self.layer.shadowColor = UIColor.darkGray.cgColor
        self.layer.shadowOpacity = 0.8
        self.layer.shadowRadius = 8
        self.layer.shadowOffset = CGSize(width: 8.0, height: 8.0)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    
    // MARK: - Private Function
    private func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "ToastNotificationView", bundle: bundle)
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            return view
        }
        return UIView()
        
    }
    
     func setupWidthConstraint() -> NSLayoutConstraint {
        print(btn.intrinsicContentSize.width)
        print(btn.frame.size.width)
        
        print(messagesLabel.intrinsicContentSize.width)
        if !(btn.isHidden) {
            btnWidth.constant = btn.intrinsicContentSize.width
        } else {
            btnWidth.constant = 0
            btnWithText.constant = 0
        }
        
        let widthConstraint = btn.widthAnchor.constraint(equalToConstant: self.messagesLabel.intrinsicContentSize.width + self.img.frame.size.width + btnWidth.constant)
        print("widthConstraint: \(widthConstraint.constant)")
        
        widthConstraint.priority = UILayoutPriority(999)


        return widthConstraint
    }
    
    func setupHeightConstraint() -> NSLayoutConstraint {
        let heightConstraint = self.heightAnchor.constraint(equalToConstant: self.messagesLabel.intrinsicContentSize.height + 25)
       
       return heightConstraint
   }
    
    
    func toastSuccess(message: String) {
        messagesLabel.text = message
        img.image = UIImage(named: "wrong")
        btn.isHidden = true
//        setupConstraint()
    }
    
    func toastErrorWithButton(message: String, buttonLabel: String) {
        messagesLabel.text = message
        img.image = UIImage(named: "wrong")
        btn.setTitle(buttonLabel, for: .normal)
        
    }
    
    @IBAction func errorDidTap(_ sender: UIButton) {
//        delegate?.errorBtnDidTap()
        clickAction?()
    }
    
}


import UIKit

@IBDesignable
class View: UIView {
    
    var view = UIView()
    
    // MARK: - IBOutlet
    @IBOutlet weak var typeView: UIView!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var typeImageView: UIImageView!
    
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
        view = loadViewFromNib()
        view.frame = bounds
        view.autoresizingMask = [UIView.AutoresizingMask.flexibleWidth, UIView.AutoresizingMask.flexibleHeight]
        view.superview?.backgroundColor = .clear
       
        addSubview(view)
        self.view.backgroundColor = .clear
    }
    
    func loadViewFromNib() -> UIView {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "View", bundle: bundle)
        if let view = nib.instantiate(withOwner: self, options: nil).first as? UIView {
            return view
        }
        return UIView()
    }
    
    @objc func setup(isCRMFlag: Bool, isPrivate: Bool) {
        typeView.isHidden = false
        if isCRMFlag {
            typeView.backgroundColor = #colorLiteral(red: 1, green: 0.9254901961, blue: 0.8745098039, alpha: 1)
//            promotionTypeLabel.text = CLService.getText("Member")
            typeLabel.textColor = #colorLiteral(red: 1, green: 0.4039215686, blue: 0.09411764706, alpha: 1)
            typeImageView.image = UIImage(named: "customerprofile_sm_star_active")
        } else {
            if (isPrivate) {
                typeView.backgroundColor = #colorLiteral(red: 0.8549019608, green: 0.8666666667, blue: 0.8862745098, alpha: 1)
//                promotionTypeLabel.text = CLService.getText("Private")
                typeLabel.textColor = #colorLiteral(red: 0.3411764706, green: 0.3647058824, blue: 0.4274509804, alpha: 1)
                typeImageView.image = UIImage(named: "lock_icon")
            } else {
                typeView.isHidden = true
                typeView.backgroundColor = #colorLiteral(red: 0.05098039216, green: 0.7921568627, blue: 0.3843137255, alpha: 0.1996107037)
                typeLabel.text = "ออนไลน์"
                typeLabel.textColor = #colorLiteral(red: 0.06274509804, green: 0.8039215686, blue: 0.3960784314, alpha: 1)
                typeImageView.image = UIImage(named: "promotion_public")
            }
        }
    }
}

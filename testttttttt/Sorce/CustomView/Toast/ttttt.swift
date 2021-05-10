//
//  ttttt.swift
//  testttttttt
//
//  Created by Foodstory on 8/4/2564 BE.
//

import UIKit
public extension UIViewController {
    func showToastSuccess(message : String) {
        let toastView = ToastNotificationView.init()
        toastView.toastSuccess(message: message)
//        toastView.frame = CGRect(x: 50, y: 150, width: toastView.messagesLabel.intrinsicContentSize.width + 70, height: toastView.messagesLabel.intrinsicContentSize.height + 25)
//        toastView.center.x = self.view.center.x
        
        self.view.addSubview(toastView)
        
        
        
        UIView.animate(withDuration: 8.0, delay: 0.5, options: .curveEaseInOut, animations: {
            toastView.alpha = 0.0
        }, completion: {(isCompleted) in
            toastView.removeFromSuperview()
        })
    }
    
    func showToastErrorWithButton(message: String, button: String, clicked: @escaping () -> Void) {
        let toastView = ToastNotificationView()
//        toastView.toastErrorWithButton(message: message, buttonLabel: button)
        toastView.toastSuccess(message: message)
        toastView.clickAction = {
            clicked()
        }
//        toastView.delegate = viewController
//        toastView.frame = CGRect(x: 50, y: 150, width: toastView.messagesLabel.intrinsicContentSize.width + 150, height: toastView.messagesLabel.intrinsicContentSize.height + 25)
//        toastView.center.x = self.view.center.x

        self.view.addSubview(toastView)
        

        
        NSLayoutConstraint.activate([
            toastView.setupWidthConstraint(),
            toastView.setupHeightConstraint(),
            toastView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            toastView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            toastView.widthAnchor.constraint(lessThanOrEqualTo: view.widthAnchor, multiplier: 0.70)
        ])
        
        self.view.uiViewAnimation(timeDutation: 1.5, timeDelay: 6.5, uiView: toastView)
//        UIView.animate(withDuration: 1.5, delay: 6.5, options: [.allowUserInteraction,.curveEaseInOut], animations: {
//            toastView.alpha = 0.05
//        }, completion: {(isCompleted) in
//            toastView.removeFromSuperview()
//
//        })
    }

}

public extension UIView {
    func uiViewAnimation(timeDutation: TimeInterval, timeDelay: TimeInterval, uiView: UIView) {
        UIView.animate(withDuration: timeDutation, delay: timeDelay, options: [.allowUserInteraction,.curveEaseInOut], animations: {
            uiView.alpha = 0.05
        }, completion: {(isCompleted) in
            uiView.removeFromSuperview()

        })
    }
}

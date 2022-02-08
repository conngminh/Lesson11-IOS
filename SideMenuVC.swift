//
//  SideMenuVC.swift
//  Lesson11
//
//  Created by Lê Công Minh on 08/02/2022.
//

import UIKit

class SideMenuVC: UIViewController {
    @IBOutlet weak var btMenu: UIButton!
    @IBOutlet weak var viewMenu: UIView!
    @IBOutlet weak var withMenuConstr: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        withMenuConstr.constant = 0 // ánh xạ width của view
    }
    
    // sử dụng animation
    @IBAction func tapOnMenu(_ sender: Any) {
        btMenu.isSelected = !btMenu.isSelected
        if btMenu.isSelected {
            UIView.animate(withDuration: 0.5) {
                self.withMenuConstr.constant = 280
                self.view.layoutIfNeeded()
            }
        } else {
            UIView.animate(withDuration: 0.5) {
                self.withMenuConstr.constant = 0
                self.view.layoutIfNeeded()
            }
        }
    }
}

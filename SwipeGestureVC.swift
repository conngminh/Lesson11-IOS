//
//  SwipeGestureVC.swift
//  Lesson11
//
//  Created by Lê Công Minh on 06/02/2022.
//

import UIKit

class SwipeGestureVC: UIViewController {
    @IBOutlet weak var lbTile: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSwipeGesture()
    }
    
    func setupSwipeGesture() {
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeLogo))
        imgLogo.isUserInteractionEnabled = true
        swipe.direction = .left
        imgLogo.addGestureRecognizer(swipe)
    }
    
    @objc func swipeLogo() {
        lbTile.text = "You just swipe from right -> left" 
    }
}

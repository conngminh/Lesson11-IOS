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
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipeLogo))
        imgLogo.isUserInteractionEnabled = true
        swipeLeft.direction = .left
        imgLogo.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipeLogo))
        swipeRight.direction = .right
        imgLogo.addGestureRecognizer(swipeRight)
        
        let swipeUp = UISwipeGestureRecognizer(target: self, action: #selector(swipeLogo))
        swipeUp.direction = .up
        imgLogo.addGestureRecognizer(swipeUp)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swipeLogo))
        swipeDown.direction = .down
        imgLogo.addGestureRecognizer(swipeDown)
        
    }
    
    @objc func swipeLogo(swipe: UISwipeGestureRecognizer) {
        if swipe.direction == UISwipeGestureRecognizer.Direction.left {
            lbTile.text = "You just swipe from left -> right"
        } else if swipe.direction == UISwipeGestureRecognizer.Direction.right {
            lbTile.text = "You just swipe from right -> left"
        } else if swipe.direction == UISwipeGestureRecognizer.Direction.up {
            lbTile.text = "You just swipe from down -> up"
        } else {
            lbTile.text = "You just swipe from up -> down"
        }
    }
//    @objc func swipeLeftLogo() {
//        lbTile.text = "You just swipe from right -> left"
//    }
//
//    @objc func swipeRightLogo() {
//        lbTile.text = "You just swipe from left -> right"
//    }
}


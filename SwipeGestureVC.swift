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
    
    
    @IBOutlet weak var heightTextFieldContr: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSwipeGesture()
        heightTextFieldContr.constant = 0
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
        
        let swipeViewDown = UISwipeGestureRecognizer(target: self, action: #selector(swipeView))
        swipeViewDown.direction = .down
        view.addGestureRecognizer(swipeViewDown)
        
        let swipeViewUp = UISwipeGestureRecognizer(target: self, action: #selector(swipeView))
        swipeViewUp.direction = .up
        view.addGestureRecognizer(swipeViewUp)
        
    }
    
    @objc func swipeView(swipe: UISwipeGestureRecognizer) {
        if swipe.direction == UISwipeGestureRecognizer.Direction.down {
            UIView.animate(withDuration: 0.5) {
                self.heightTextFieldContr.constant = 36
                self.view.layoutIfNeeded()
            }
        } else {
            UIView.animate(withDuration: 0.5) {
                self.heightTextFieldContr.constant = 0
                self.view.layoutIfNeeded()
            }
        }
        
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
    
    @IBAction func swipeOnView(_ sender: Any) {
        lbTile.text = "Swipe right on View"
        let vc = LongPressGesture(nibName: "LongPressGesture", bundle: nil)
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true, completion: nil)
    }
}


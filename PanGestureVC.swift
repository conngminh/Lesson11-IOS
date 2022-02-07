//
//  PanGestureVC.swift
//  Lesson11
//
//  Created by Lê Công Minh on 07/02/2022.
//

import UIKit

class PanGestureVC: UIViewController {
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    
    @IBOutlet weak var imgBall: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPanGesture()
    }

    func setupPanGesture() {
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panOnLogo))
        imgLogo.isUserInteractionEnabled = true
        imgLogo.addGestureRecognizer(panGesture)
    }
    
    // pan ít dùng
    // khác với mấy thằng khác, phải tính toán vị trí
    @objc func panOnLogo(pan: UIPanGestureRecognizer) {
        //tính toán vị trí của thằng pan này trước
        let trans = pan.translation(in: view)
        if let view = pan.view { // lấy view
            let x = view.center.x + trans.x
            let y = view.center.y + trans.y
            view.center = CGPoint(x: x, y: y)
            pan.setTranslation(CGPoint.zero, in: view)
        }
    }
    
    @IBAction func panOnBall(_ sender: UIPanGestureRecognizer) {
        let trans = sender.translation(in: view)
        if let view = sender.view { // lấy view
            let x = view.center.x + trans.x
            let y = view.center.y + trans.y
            view.center = CGPoint(x: x, y: y)
            sender.setTranslation(CGPoint.zero, in: view)
        }

    }
}

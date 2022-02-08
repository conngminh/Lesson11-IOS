//
//  PinchGesture.swift
//  Lesson11
//
//  Created by Lê Công Minh on 07/02/2022.
//

import UIKit

class PinchGesture: UIViewController {
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imgBall: UIImageView!
    @IBOutlet weak var imgLogo: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupPingGesture()
    }

    func setupPingGesture() {
        let pingGesture = UIPinchGestureRecognizer(target: self, action: #selector(pinchOnBall))
        imgBall.isUserInteractionEnabled = true
        imgBall.addGestureRecognizer(pingGesture)
    }
    
    @objc func pinchOnBall(pinch: UIPinchGestureRecognizer) {
        if let view = pinch.view {
            let x = pinch.scale
            let y = pinch.scale
            view.transform = view.transform.scaledBy(x: x, y: y)
            pinch.scale = 1
        }
    }
    
    @IBAction func pinchOnLogo(_ sender: UIPinchGestureRecognizer) {
        if let view = sender.view {
            let x = sender.scale
            let y = sender.scale
            view.transform = view.transform.scaledBy(x: x, y: y)
            sender.scale = 1
            
            let vc = RouteGestureVC(nibName: "RouteGestureVC", bundle: nil)
            vc.modalPresentationStyle = .overFullScreen
            present(vc, animated: true, completion: nil)
        }
        
    }
}

//
//  RouteGestureVC.swift
//  Lesson11
//
//  Created by Lê Công Minh on 07/02/2022.
//

import UIKit

class RouteGestureVC: UIViewController {
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    @IBOutlet weak var imgBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupRouteGesture()
    }
    
    func setupRouteGesture() {
        //Khai báo
        let route = UIRotationGestureRecognizer(target: self, action: #selector(routeOnLogo))
        imgLogo.isUserInteractionEnabled = true
        imgLogo.addGestureRecognizer(route)
    }
    
    @objc func routeOnLogo(route: UIRotationGestureRecognizer) {
        //Thực hiện
        if let view = route.view {
            view.transform = view.transform.rotated(by: route.rotation)
            route.rotation = 0
        }
    }
    
    @IBAction func routeOnBall(_ sender: UIRotationGestureRecognizer) {
        if let view = sender.view {
            view.transform = view.transform.rotated(by: sender.rotation)
            sender.rotation = 0
        }
    }
    
    @IBAction func tapOnButton(_ sender: Any) {
        let vc = SideMenuVC(nibName: "SideMenuVC", bundle: nil)
        vc.modalPresentationStyle = .overFullScreen
        present(vc, animated: true, completion: nil)
    }
}

//
//  ViewController.swift
//  Lesson11
//
//  Created by Lê Công Minh on 06/02/2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGesture()
    }

    func setupGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(tapLogo))
        imgLogo.isUserInteractionEnabled = true
        imgLogo.addGestureRecognizer(tapGesture)
    }
    
    @objc func tapLogo() {
        let alert = UIAlertController(title: "You tab on logo by tap gesture in code", message: nil, preferredStyle: .alert)
        let action = UIAlertAction(title: "Agree", style: .default, handler: nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    
    @IBAction func tapOnLabel(_ sender: Any) {
        lbTitle.text = "Screen 1: Tap gesture" 
    }
}


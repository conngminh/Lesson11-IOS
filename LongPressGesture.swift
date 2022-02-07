//
//  LongPressGesture.swift
//  Lesson11
//
//  Created by Lê Công Minh on 07/02/2022.
//

import UIKit

class LongPressGesture: UIViewController {

    @IBOutlet weak var lbTitle: UILabel!
    @IBOutlet weak var imgLogo: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupLongPress()
    }
    
    func setupLongPress() {
        let longPress = UILongPressGestureRecognizer(target: self, action: #selector(longPressLogo))
        imgLogo.isUserInteractionEnabled = true
        imgLogo.addGestureRecognizer(longPress)
    }
    
    @objc func longPressLogo() {
        let alert = UIAlertController(title: "Do you want to save this picture", message: nil, preferredStyle: .actionSheet)
        let ac1 = UIAlertAction(title: "Save", style: .default) { ac1 in
            let image = self.imgLogo.image! //lấy ảnh lưu
            UIImageWriteToSavedPhotosAlbum(image, self, nil, nil) // save image vào thư viện
        }
        let ac2 = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        alert.addAction(ac1)
        alert.addAction(ac2)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func longPressOnLabel(_ sender: Any) {
        lbTitle.text = "You have long pressed on title"
    }
    
}


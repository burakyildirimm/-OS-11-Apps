//
//  ViewController.swift
//  Gesture Recognizer
//
//  Created by burak on 30.09.2017.
//  Copyright © 2017 Burak Yıldırım. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ImageView: UIImageView!
    @IBOutlet weak var NameLabel: UILabel!
    
    var isMacbook = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ImageView.isUserInteractionEnabled = true
        
        let tapImage = UITapGestureRecognizer(target: self, action: #selector(ViewController.chancegedImage))
        ImageView.addGestureRecognizer(tapImage)
    }
    
    @objc func chancegedImage() {
        if isMacbook == true {
            ImageView.image = UIImage(named: "pc.jpeg")
            NameLabel.text = "That is a Pc"
            isMacbook = false
        } else {
            ImageView.image = UIImage(named: "macbook.jpeg")
            NameLabel.text = "That is a Macbook"
            isMacbook = true
        }
    }

   


}


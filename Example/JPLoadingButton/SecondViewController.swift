//
//  SecondViewController.swift
//  JPLoadingButton
//
//  Created by julp04 on 03/01/2017.
//  Copyright (c) 2017 julp04. All rights reserved.
//


import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bg = UIImageView(image: UIImage(named: "Home.png"))
        bg.frame = self.view.frame
        self.view.addSubview(bg)
        
        let tapRecognizer = UITapGestureRecognizer(target: self, action: #selector(SecondViewController.onTapScreen))
        bg.isUserInteractionEnabled = true
        bg.addGestureRecognizer(tapRecognizer)
    }
    
    func onTapScreen() {
        self.dismiss(animated: true, completion: nil)
    }
}


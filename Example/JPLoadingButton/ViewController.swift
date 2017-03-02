//
//  ViewController.swift
//  JPLoadingButton
//
//  Created by julp04 on 03/01/2017.
//  Copyright (c) 2017 julp04. All rights reserved.
//

import UIKit
import JPLoadingButton

class ViewController: UIViewController, UIViewControllerTransitioningDelegate {

    @IBOutlet weak var loginButton: JPLoadingButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let bg = UIImageView(image: UIImage(named: "Login.png"))
        bg.frame = self.view.frame
        self.view.addSubview(bg)
        self.view.bringSubview(toFront: self.loginButton)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginAction(_ sender: Any) {
        
//            loginButton.animate(1, completion: { () -> () in
//                let secondVC = SecondViewController()
//                secondVC.transitioningDelegate = self
//                self.present(secondVC, animated: true, completion: nil)
//            })
        
        
//        loginButton.startLoadingAnimation()
//        
//        Timer.schedule(delay: 2.0) { (timer) in
//            self.loginButton.stopLoadingAnimation(title: "Login Failed")
//            self.loginButton.backgroundColor = UIColor.blue
//        }
        
        
        
        
//        loginButton.startLoadingAnimation()
//        
//        Timer.schedule(delay: 2.0) { (timer) in
//            self.loginButton.startFinishAnimation(completion: { 
//                let secondVC = SecondViewController()
//                secondVC.transitioningDelegate = self
//                self.present(secondVC, animated: true, completion: nil)
//            })
//        }
        
        
        loginButton.startLoadingAnimation()
        
        Timer.schedule(delay: 2.0) { (timer) in
            
            self.loginButton.startFinishAnimationWith(currentVC: self,viewController: SecondViewController())
        }
    }
    
    
    // MARK: UIViewControllerTransitioningDelegate
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return JPFadeInAnimator(transitionDuration: 0.5, startingAlpha: 0.8)
    }
    
    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        return nil
    }
    
    
}


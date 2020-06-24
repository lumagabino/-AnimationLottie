//
//  ViewController.swift
//  AnimationLottie
//
//  Created by Luma Gabino Vasconcelos on 18/06/20.
//  Copyright © 2020 Luma Gabino Vasconcelos. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    @IBOutlet weak var checkView: UIView!
    let animationView =  AnimationView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startAnimation()
    }
    
    func startAnimation()  {
        animationView.animation = Animation.named("drama")
        animationView.frame = checkView.bounds
        animationView.backgroundColor = .white
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        checkView.addSubview(animationView)
    }
    @IBAction func buttonclicked(_ sender: Any) {
        animationView.animation = Animation.named("check")
        animationView.frame = checkView.bounds
        animationView.backgroundColor = .white
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        checkView.addSubview(animationView)
    }
}


//
//  ViewController.swift
//  SecondProjectHW1
//
//  Created by Macbook on 19.05.2020.
//  Copyright © 2020 Igor Simonov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLabel: UIView!
    @IBOutlet weak var yelowLabel: UIView!
    @IBOutlet weak var greenLabel: UIView!
    @IBOutlet weak var showStartButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLabel.layer.cornerRadius = 70
        redLabel.alpha = 0.3
        yelowLabel.layer.cornerRadius = 70
        yelowLabel.alpha = 0.3
        greenLabel.layer.cornerRadius = 70
        greenLabel.alpha = 0.3
        showStartButton.layer.cornerRadius = 10
    }

    @IBAction func startButton() {
        showStartButton.setTitle("NEXT", for: .normal)
    }
    
    
}


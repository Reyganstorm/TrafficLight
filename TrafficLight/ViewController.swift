//
//  ViewController.swift
//  TrafficLight
//
//  Created by Руслан Штыбаев on 19.08.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        startButton.layer.cornerRadius = 10
        
        redLightView.alpha = 0.3
        yellowLightView.alpha = 0.3
        greenLightView.alpha = 0.3
        
        
    }

    @IBAction func managerButtonPressed() {
        startButton.setTitle("Next", for: .normal)
        
        if redLightView.alpha != 1 && yellowLightView.alpha != 1 {
            
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
            
        } else if redLightView.alpha == 1 {
            
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
            
        } else if yellowLightView.alpha == 1 {
            
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
        }
    }
    
}


//
//  ViewController.swift
//  Lesson1.Task2
//
//  Created by Кирилл Крамар on 20.05.2020.
//  Copyright © 2020 Кирилл Крамар. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
    private var firsTapButton = true
    private var currentLight = 0
    @IBOutlet weak var lightStackView: UIStackView!
    @IBOutlet weak var redLightLabel: UIView!
    
    @IBOutlet weak var yellowLightLabel: UIView!
    
    @IBOutlet weak var greenLightLabel: UIView!
    
    @IBOutlet weak var lightButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        setConfigurationLabels()
        setConfigurationButton()
    }
    private func setConfigurationLabels(){
        redLightLabel.alpha     = 0.5
        yellowLightLabel.alpha  = 0.5
        greenLightLabel.alpha   = 0.5
        redLightLabel.layer.cornerRadius    = redLightLabel.frame.width/2
        yellowLightLabel.layer.cornerRadius = yellowLightLabel.frame.width/2
        greenLightLabel.layer.cornerRadius  = greenLightLabel.frame.width/2
        
    }
    private func setConfigurationButton(){
        lightButton.layer.cornerRadius = 10
        lightButton.setTitle("Start", for: .normal)
    }
    @IBAction func changeLight() {
        if firsTapButton {
            lightButton.setTitle("Next", for: .normal)
            firsTapButton = false
        }
        switch currentLight {
        case 0:
            greenLightLabel.alpha  = 0.5
            redLightLabel.alpha    = 1
            currentLight           = 1
        case 1:
            redLightLabel.alpha    = 0.5
            yellowLightLabel.alpha = 1
            currentLight           = 2
        case 2:
            yellowLightLabel.alpha = 0.5
            greenLightLabel.alpha  = 1
            currentLight           = 0
        default:
         fatalError("incorrect value currentLight ")
        }
        
    
}
    override func viewWillLayoutSubviews() {
       
    }
}


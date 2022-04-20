//
//  ViewController.swift
//  PavlovBDHW1
//
//  Created by Борис Павлов on 20.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redView: UIView!//255.0.0
    @IBOutlet weak var yellowView: UIView!//255.255.0
    @IBOutlet weak var greenView: UIView!//2.255.0
    @IBOutlet weak var startButton: UIButton!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        settingsView()
    }
  
    @IBAction func traficLigthSwitch() {
        if redView.alpha == 1 {
            startButton.setTitle("Next", for: .normal)
            redView.alpha = 0.3
            redView.layer.shadowOpacity = 0
            greenView.alpha = 0.3
            greenView.layer.shadowOpacity = 0
            yellowView.alpha = 1.0
            yellowView.layer.shadowRadius = 10
            yellowView.layer.shadowOpacity = 0.7
            yellowView.layer.shadowColor = CGColor(red: 255, green: 255, blue: 0, alpha: 1)
        } else if yellowView.alpha == 1 {
            greenView.alpha = 1.0
            greenView.layer.shadowRadius = 10
            greenView.layer.shadowOpacity = 0.7
            greenView.layer.shadowColor = CGColor(red: 2, green: 255, blue: 0, alpha: 1)
            redView.alpha = 0.3
            redView.layer.shadowOpacity = 0
            yellowView.alpha = 0.3
            yellowView.layer.shadowOpacity = 0
        } else if redView.alpha != 1 {
            yellowView.alpha = 0.3
            yellowView.layer.shadowOpacity = 0
            greenView.alpha = 0.3
            redView.alpha = 1.0
            redView.layer.shadowRadius = 10
            redView.layer.shadowOpacity = 0.7
            redView.layer.shadowColor = CGColor(red: 255, green: 0, blue: 0, alpha: 1)
        }
    }
    
    func settingsView() {
        let cyrcle: CGFloat = 72
        redView.layer.cornerRadius = cyrcle
        redView.backgroundColor = .red
        redView.alpha = 0.3
        yellowView.layer.cornerRadius = cyrcle
        yellowView.backgroundColor = .yellow
        yellowView.alpha = 0.3
        greenView.layer.cornerRadius = cyrcle
        greenView.backgroundColor = .green
        greenView.alpha = 0.3
        startButton.layer.cornerRadius = 10
        startButton.setTitle("Start", for: .normal)
        startButton.backgroundColor = .blue
    }
}


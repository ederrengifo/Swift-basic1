//
//  ViewController.swift
//  Basic-1
//
//  Created by Eder Rengifo on 7/28/17.
//  Copyright © 2017 Eder Rengifo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue = 0
    var targetValue = 0
    var score = 0
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var targetLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        startNewRound()
        updateLabels()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }

    @IBAction func showAlert() {
        
        let difference = abs(currentValue - targetValue)
        let points = 100 - difference
        score += points
        
        let message = "You scored \(points) points!"
        
        let alert = UIAlertController(title:"Hello world",
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title:"OK",
                                   style: .default,
                                   handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        startNewRound()
        updateLabels()
    }
    
    func startNewRound() {
        targetValue = 1 + Int(arc4random_uniform(100))
        currentValue = lroundf(slider.value)
        slider.value = Float(currentValue)
    }
    
    func updateLabels() {
        
        targetLabel.text = String(targetValue)
        scoreLabel.text = String(score)
    }
    
}


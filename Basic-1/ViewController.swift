//
//  ViewController.swift
//  Basic-1
//
//  Created by Eder Rengifo on 7/28/17.
//  Copyright © 2017 Eder Rengifo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var currentValue: Int = 0
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        currentValue = lroundf(slider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sliderMoved(_ slider: UISlider) {
        currentValue = lroundf(slider.value)
    }

    @IBAction func showAlert() {
        
        let message = "The value of the slider is: \(currentValue)"
        
        let alert = UIAlertController(title:"Hello world",
                                      message: message,
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title:"OK",
                                   style: .default,
                                   handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}


//
//  ViewController.swift
//  Basic-1
//
//  Created by Eder Rengifo on 7/28/17.
//  Copyright © 2017 Eder Rengifo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showAlert() {
        let alert = UIAlertController(title:"Hello world",
                                      message: "This is my first alert",
                                      preferredStyle: .alert)
        
        let action = UIAlertAction(title:"Close",
                                   style: .default,
                                   handler: nil)
        
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
}


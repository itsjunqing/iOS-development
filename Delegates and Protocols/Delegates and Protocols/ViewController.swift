//
//  ViewController.swift
//  Delegates and Protocols
//
//  Created by Jun Qing Lim on 2/10/19.
//  Copyright © 2019 Jun Qing Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive{

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForward", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForward" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            secondVC.delegate = self
        }
    }
    
    func dataReceived(data: String) {
        label.text = data
    }
}


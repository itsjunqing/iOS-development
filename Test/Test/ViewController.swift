//
//  ViewController.swift
//  Test
//
//  Created by Jun Qing Lim on 2/2/19.
//  Copyright © 2019 Jun Qing Lim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let width = 100
        let height = 100
        let x = (self.view.frame.width / 2) - Int(width / 2)
        let y = (self.view.frame.height / 2) - Int(height / 2)
        
        let square = UIView(frame: CGRect(x: x, y: y, width: width, height: height))
        square.backgroundColor = UIColor.red
        self.view.addSubview(square)
        
//        let screenRect = UIScreen.main.bounds
//        let (screenWidth = screenRect.size.width / 2) - (width / 2)
//        let screenHeight = screenRect.size.height
        
 
        print("width is \(screenWidth) and height is \(screenHeight)")
        print("width is \(x) and height is \(y)")
    }


}


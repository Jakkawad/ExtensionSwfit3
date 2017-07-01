//
//  ViewController.swift
//  ExtensionSwfit3
//
//  Created by Jakkawad Chaiplee on 7/1/2560 BE.
//  Copyright © 2560 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let start = Date()
        // Queue
        DispatchQueue.global(qos: .userInteractive).async {
            // Background thread
            
            DispatchQueue.main.async {
                // Main UI thead
                
            }
        }
        let end = Date()
        print("Elapsed Time: \(end.timeIntervalSince(start))")
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


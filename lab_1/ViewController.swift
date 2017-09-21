//
//  ViewController.swift
//  lab_1
//
//  Created by sophia fibkins on 9/16/17.
//  Copyright © 2017 sophia fibkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func chooseArt(sender: UIButton) { 
        
    }
    @IBAction func buttonPressed(sender: UIButton) {
        messageText.text="Hello World"
    }
    @IBOutlet weak var messageText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  _lab4
//
//  Created by Mason Fibkins on 11/27/17.
//  Copyright © 2017 mason fibkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    
    var user=Food()

    @IBOutlet weak var foodLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue){
        foodLabel.text=user.topFood
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        textField.resignFirstResponder()
        return true
    }


}


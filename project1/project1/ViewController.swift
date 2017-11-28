//
//  ViewController.swift
//  project1
//
//  Created by Mason Fibkins on 11/20/17.
//  Copyright © 2017 mason fibkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
   

    @IBOutlet weak var textOne: UITextField!
    
    @IBOutlet weak var labelOne: UILabel!

    
    @IBAction func buttonOne(_ sender: Any) {
        let answer = "cat"
        
        if answer.contains(self.textOne.text!){
            labelOne.text = "Correct"
        }else{
            labelOne.text = "Try again"
        }
    }
    
    override func viewDidLoad() {
        textOne.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func unwindSegue(_ segue:UIStoryboardSegue){
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }


}


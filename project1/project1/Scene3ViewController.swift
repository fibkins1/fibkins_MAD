//
//  Scene3ViewController.swift
//  project1
//
//  Created by Mason Fibkins on 11/20/17.
//  Copyright © 2017 mason fibkins. All rights reserved.
//

import UIKit

class Scene3ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    
    @IBOutlet weak var textThree: UITextField!

    @IBOutlet weak var labelThree: UILabel!
    
    @IBAction func enterButtonThree(_ sender: Any) {
        let answerThree = "pig"
        
        if answerThree.contains(self.textThree.text!){
            labelThree.text = "Correct"
        }else{
            labelThree.text = "Try again"
        }
    }
    
    
    override func viewDidLoad() {
        textThree.delegate=self
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

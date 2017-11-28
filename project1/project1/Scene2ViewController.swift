//
//  Scene2ViewController.swift
//  project1
//
//  Created by Mason Fibkins on 11/20/17.
//  Copyright © 2017 mason fibkins. All rights reserved.
//

import UIKit

class Scene2ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties

    @IBOutlet weak var textTwo: UITextField!
    
    @IBOutlet weak var labelTwo: UILabel!

  
    @IBAction func enterButtonTwo(_ sender: Any) {
        let answerTwo = "turtle"
        
        if answerTwo.contains(self.textTwo.text!){
            labelTwo.text = "Correct"
        }else{
            labelTwo.text = "Try again"
        }
    }

    
    
    override func viewDidLoad() {
        textTwo.delegate=self
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

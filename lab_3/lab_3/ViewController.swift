//
//  ViewController.swift
//  lab_3
//

//  Copyright © 2017 sophia fibkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    
    @IBOutlet weak var myTextField1: UITextField!
    
    @IBOutlet weak var myTextField2: UITextField!

    @IBOutlet weak var myTextField3: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        myTextField1.delegate=self
        myTextField2.delegate=self
        myTextField3.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool){
        createAlert(title: "Hello", message: "Press Ok to start calculating")
    }
    
    func createAlert (title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (Action) in }))
        self.present(alert, animated:true, completion: nil)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }

    override func didReceiveMemoryWarning() {
       
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func myButton1(_ sender: Any) {
        let firstValue = Double(myTextField1.text!)
        let secondValue = Double(myTextField2.text!)
        let thirdValue = Double(myTextField3.text!)
        
        let outputValue = Double(firstValue! + secondValue! + thirdValue!)
        
        myLabel.text = " \(outputValue)"
    }

}


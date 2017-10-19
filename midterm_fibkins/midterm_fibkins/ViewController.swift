//
//  ViewController.swift
//  midterm_fibkins
//
//  Created by Mason Fibkins on 10/19/17.
//  Copyright © 2017 sophia fibkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //MARK: Properties
    @IBOutlet weak var firstImage: UIImageView!

    @IBOutlet weak var totalMiles: UITextField!
    
    @IBOutlet weak var myLabel: UILabel!

    @IBOutlet weak var myLabel2: UILabel!
    
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBOutlet weak var valueSwitch: UISwitch!
    
    @IBOutlet weak var imageControl: UISegmentedControl!
    
    func createAlert (title:String, message:String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertControllerStyle.alert)
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: { (Action) in }))
        self.present(alert, animated:true, completion: nil)
    }
    
    func updateImage(){
        if imageControl.selectedSegmentIndex==0{
            firstImage.image=UIImage(named: "car_icon")
            createAlert(title: "Stop", message: "You should try carpooling")
        }
        else if imageControl.selectedSegmentIndex==1{
            firstImage.image=UIImage(named: "bus_icon")
        }else if imageControl.selectedSegmentIndex==2{
            firstImage.image=UIImage(named: "bike_icon")
        }
    }
    
    @IBAction func changePic(_ sender: UISegmentedControl) {
        updateImage()
    }
    
    
    func updateValuesSwitch(){
        if valueSwitch.isOn {
            let mileValue = Double(totalMiles.text!)
            let gasPurchase = Double(totalMiles.text!)
            
            let outputValue = Double(20*(1/mileValue!)*60)
            
            myLabel.text = " \(outputValue*20)"
            
            let outputValue2 = Double(gasPurchase!/24)
            
            myLabel2.text = " \(outputValue2*20)"
        }else{
            let mileValue = Double(totalMiles.text!)
            let gasPurchase = Double(totalMiles.text!)
            
            let outputValue = Double(20*(1/mileValue!)*60)
            
            myLabel.text = " \(outputValue)"
            
            let outputValue2 = Double(gasPurchase!/24)
            
            myLabel2.text = " \(outputValue2)"
        }
        
    }
    
    @IBAction func monthlySwitch(_ sender: UISwitch) {
        updateValuesSwitch()
    }
    
    @IBAction func changeGas(_ sender: UISlider) {
        var currentValue = Int(sender.value)
        sliderLabel.text = " \(currentValue)"
    }
    
    @IBAction func myButton(_ sender: Any) {
        let mileValue = Double(totalMiles.text!)
        let gasPurchase = Double(totalMiles.text!)
        
        let outputValue = Double(20*(1/mileValue!)*60)
        
        myLabel.text = " \(outputValue)"
        
        let outputValue2 = Double(gasPurchase!/24)
        
        myLabel2.text = " \(outputValue2)"
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewDidLoad() {
        totalMiles.delegate=self
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


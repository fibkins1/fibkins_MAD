//
//  ViewController.swift
//  lab2
//
//  Created by sophia fibkins on 9/23/17.
//  Copyright © 2017 sophia fibkins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let fontSize = 14
    
    //MARK: Properties

    @IBOutlet weak var firstImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var imageControl: UISegmentedControl!
    
    @IBOutlet weak var capitalSwitch: UISwitch!
    
    @IBOutlet weak var fontSizeLabel: UILabel!
    
    func updateImage(){
        if imageControl.selectedSegmentIndex==0{
            titleLabel.text="First"
            firstImage.image=UIImage(named: "main1")
        }
        else if imageControl.selectedSegmentIndex==1{
            titleLabel.text="Second"
            firstImage.image=UIImage(named: "main2")
        }
    }
    
    func updateCaps(){
        if capitalSwitch.isOn {
            titleLabel.text=titleLabel.text?.uppercased()
        } else{
            titleLabel.text=titleLabel.text?.lowercased()
        }
    }
    
    @IBAction func changeFontSize(_ sender: UISlider) {
        let fontSize=sender.value
        fontSizeLabel.text=String(format: "%.0f",fontSize)
        let fontSizeCGFloat=CGFloat(fontSize)
        titleLabel.font=UIFont.systemFont(ofSize: fontSizeCGFloat)
    }
    
    @IBAction func updateFont(_ sender: UISwitch) {
        updateCaps()
    }
    
    @IBAction func changeInfo(_ sender: UISegmentedControl) {
       updateImage()
        updateCaps()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  lab_4
//
//  Created by Mason Fibkins on 10/15/17.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    @IBOutlet weak var foodType: UILabel!
    
    @IBOutlet weak var foodLabel: UILabel!
    @IBAction func unwindSegue(_ segue:UIStoryboardSegue){
        
    }
    
    @IBOutlet weak var Info: UIToolbar!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


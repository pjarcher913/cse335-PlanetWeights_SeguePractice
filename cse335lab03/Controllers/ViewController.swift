//
//  ViewController.swift
//  cse335lab03
//
//  Created by Patrick Archer on 9/14/18.
//  Copyright © 2018 Patrick Archer - Self. All rights reserved.
//

import Foundation
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_earthWeight: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // change keyboard input to a decimal input onlya (no strings or special chars)
        // additionally, clear any currently enterred text
        self.tf_earthWeight.keyboardType = UIKeyboardType.numberPad
        self.tf_earthWeight.text! = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // clear any currently enterred text
        self.tf_earthWeight.text! = ""
    }
    
    // prepare data and views for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toMoonView")
        {
            let desMoon = segue.destination as! moonViewController
            
            if self.tf_earthWeight.hasText == false
            {
                // catch error for when nothing enterred
                desMoon.weightFromEarth = 0
                print(desMoon.weightFromEarth!)  // debug
            }else{
                desMoon.weightFromEarth = Int(self.tf_earthWeight.text!)
                print(desMoon.weightFromEarth!)  // debug
            }
        }
        else if (segue.identifier == "toJupiterView")
        {
            let desJupiter = segue.destination as! jupiterViewController
            
            if self.tf_earthWeight.hasText == false
            {
                // catch error for when nothing enterred
                desJupiter.weightFromEarth = 0
                print(desJupiter.weightFromEarth!)   // debug
            }else{
                desJupiter.weightFromEarth = Int(self.tf_earthWeight.text!)
                print(desJupiter.weightFromEarth!)   // debug
            }
        }
    }
    
    // used by Exit handler to unwind segue and pass data to the original page
    @IBAction func unwindSegue(segue: UIStoryboardSegue)
    {
        print("Unwinding page segue")
        
        if let sourceViewControllerMoon = segue.source as? moonViewController
        {
            let dataReceived = sourceViewControllerMoon.dataToReturn
            //print(String(dataReceived!))
            
        }
        else if let sourceViewControllerJupiter = segue.source as? jupiterViewController
        {
            let dataReceived = sourceViewControllerJupiter.dataToReturn
            //print(String(dataReceived!))
        }
    }
    
    /****************************/
    //  Begin custom methods
    /****************************/
    
    @IBAction func buttonGoToMoon(_ sender: UIButton) {
        //let userEarthWeight = self.tf_earthWeight.text!
        //self.tf_earthWeight.text! = ""
    }
    
    @IBAction func buttonGoToJupiter(_ sender: UIButton) {
        //let userEarthWeight = self.tf_earthWeight.text!
        //self.tf_earthWeight.text! = ""
    }
    

}


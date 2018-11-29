//
//  jupiterViewController.swift
//  cse335lab03
//
//  Created by Patrick Archer on 9/14/18.
//  Copyright © 2018 Patrick Archer - Self. All rights reserved.
//

import Foundation
import UIKit

class jupiterViewController: UIViewController {

    var weightFromEarth:Int?
    var dataToReturn:Int?
    
    @IBOutlet weak var label_jupiterWeight: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(weightFromEarth!)
        dataToReturn = weightFromEarth!
        
        var jupiterWeight:Double = 0
        jupiterWeight = Double(weightFromEarth!)*2.6
        print(jupiterWeight)
        
        //self.label_jupiterWeight.text = String(jupiterWeight)
        self.label_jupiterWeight.text! = jupiterWeight.description
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /****************************/
    //  Begin custom methods
    /****************************/
    
}

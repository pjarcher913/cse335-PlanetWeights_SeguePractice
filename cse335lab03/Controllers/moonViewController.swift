//
//  moonViewController.swift
//  cse335lab03
//
//  Created by Patrick Archer on 9/14/18.
//  Copyright © 2018 Patrick Archer - Self. All rights reserved.
//

import Foundation
import UIKit

class moonViewController: UIViewController {

    var weightFromEarth:Int?
    var dataToReturn:Int?
    
    @IBOutlet weak var label_moonWeight: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //print(weightFromEarth)
        dataToReturn = weightFromEarth!
        
        //let moonWeight = Double(weightFromEarth!)*0.1666
        var moonWeight:Double?
        moonWeight = Double(weightFromEarth!)*0.1666
        
        self.label_moonWeight.text! = String(moonWeight!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /****************************/
    //  Begin custom methods
    /****************************/
    
    
}

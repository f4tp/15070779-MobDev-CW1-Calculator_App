//
//  ViewController.swift
//  [15070779]CW1_Calculator_App
//
//  Created by Paul Treadwell on 16/10/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import UIKit



class ViewController: UIViewController {

    @IBOutlet weak var lblNumber1: UILabel!
    @IBOutlet weak var lblNumber2: UILabel!
    var intTotal = 10
    
    @IBOutlet weak var lblWellDone: UILabel!
    
    @IBOutlet weak var btnWellDone: UIButton!
    @IBAction func btnReload(_ sender: AnyObject) {
        
        viewDidLoad()
    }
    @IBAction func tuButton0(_ sender: AnyObject) {
        
        if (intTotal == 0) {
            
            lblWellDone.isHidden = false
            btnWellDone.isHidden = false
            
        }
      
    }
    
    @IBAction func tuButton1(_ sender: AnyObject) {
        if (intTotal == 1) {
            
            lblWellDone.isHidden = false
            btnWellDone.isHidden = false
        }
    }
    
    
    @IBAction func tuButton2(_ sender: AnyObject) {
        if (intTotal == 2) {
            
            lblWellDone.isHidden = false
            btnWellDone.isHidden = false
        }
    }
    
    
    @IBAction func tuButton3(_ sender: AnyObject) {
        if (intTotal == 3) {
            
            lblWellDone.isHidden = false
            btnWellDone.isHidden = false
        }
    }
    
    
    @IBAction func tuButton4(_ sender: AnyObject) {
        if (intTotal == 4) {
            
            lblWellDone.isHidden = false
            btnWellDone.isHidden = false
        }
    }
    
    
    @IBAction func tuButton5(_ sender: AnyObject) {
        if (intTotal == 5) {
            
            lblWellDone.isHidden = false
            btnWellDone.isHidden = false
        }
    }
    
    
    @IBAction func tuButton6(_ sender: AnyObject) {
        if (intTotal == 6) {
            
            lblWellDone.isHidden = false
            btnWellDone.isHidden = false
        }
    }
    
    @IBAction func tuButton7(_ sender: AnyObject) {
        if (intTotal == 7) {
            
            lblWellDone.isHidden = false
            btnWellDone.isHidden = false
        }
    }
    
    
    @IBAction func tuButton8(_ sender: AnyObject) {
        if (intTotal == 8) {
            
            lblWellDone.isHidden = false
            btnWellDone.isHidden = false
        }
    }
    
    @IBAction func tuButton9(_ sender: AnyObject) {
        if (intTotal == 9) {
            
            lblWellDone.isHidden = false
            btnWellDone.isHidden = false
        }
    }

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblWellDone.isHidden = true
        btnWellDone.isHidden = true
        
        let intNumber1: Int = Int(arc4random_uniform(4) + 1)
        let intNumber2: Int = Int(arc4random_uniform(4) + 1)
        intTotal = intNumber1 + intNumber2
        

        
        lblNumber1.text = String(intNumber1)
        lblNumber2.text = String(intNumber2)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


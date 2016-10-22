//
//  ViewController.swift
//  [15070779]CW1_Calculator_App
//
//  Created by Paul Treadwell on 16/10/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //outlets for main components of initial screen
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var lblNumber1: UILabel!
    @IBOutlet weak var lblNumber2: UILabel!
    @IBOutlet weak var lblPlusSign: UILabel!
    @IBOutlet weak var lblEqualsQM: UILabel!
    @IBOutlet weak var plateImage: UIImageView!
    @IBOutlet weak var apple1: draggable_UIImageView!
    
    @IBOutlet weak var apple2: draggable_UIImageView!
    
    @IBOutlet weak var apple3: draggable_UIImageView!
    
    @IBOutlet weak var apple4: draggable_UIImageView!
    
    @IBOutlet weak var apple5: draggable_UIImageView!
    
    @IBOutlet weak var apple6: draggable_UIImageView!
    
    @IBOutlet weak var apple7: draggable_UIImageView!
    
    @IBOutlet weak var apple8: draggable_UIImageView!
    
    @IBOutlet weak var apple9: draggable_UIImageView!
    
    @IBOutlet weak var apple10: draggable_UIImageView!
    

    // outlets for the wellDoneView View object so it can be hidden / shown
    @IBOutlet weak var wellDoneView: UIView!
    @IBOutlet weak var lblWellDoneMessage: UILabel!
    
    @IBOutlet weak var btnHideWellDoneView: UIButton!
    
    //public variable set up to match user's answer to, will be assigned the correct value after Random numbers have been generated
    var intTotal = 10
    
    //restart the app calls viewdidload function
    @IBAction func btnReload(_ sender: AnyObject) {
        
        viewDidLoad()
        viewWillLayoutSubviews()
    }
    
    
    //variables for testing screen size to programmatically set up the layout
    var screenSize: CGRect?
    var screenWidth:CGFloat?
    var screenHeight:CGFloat?
    var PhoneScreenType: NSString?
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //routines for basic functionality

        
        let intNumber1: Int = Int(arc4random_uniform(4) + 1)
        let intNumber2: Int = Int(arc4random_uniform(4) + 1)
        intTotal = intNumber1 + intNumber2
        
        lblNumber1.text = String(intNumber1)
        lblNumber2.text = String(intNumber2)
        
        //routines for programmatically setting up layout - reports screen size so the right routine can run and set up the layout based on how big the screen is
        screenSize = UIScreen.main.bounds
        screenWidth = screenSize?.width
        screenHeight = screenSize?.height
        
        
        //initialise the WellDoneView to the same size as the screen
        var rect = wellDoneView.frame
        rect.origin.x = 0
        rect.origin.y = 0
        rect.size.width = screenWidth!
        rect.size.height = screenHeight!
        wellDoneView.frame = rect
        
        // hide wellDOneView to show main screen
                wellDoneView.isHidden = true
        
        
        
        if (screenWidth == 320.0 && screenHeight == 480.0) {
            PhoneScreenType = "4"
        }
        
        if (screenWidth == 320.0 && screenHeight == 568.0) {
            PhoneScreenType = "5"
        }
        
        if (screenWidth == 375.0 && screenHeight == 667.0) {
            PhoneScreenType = "6.7"
        }
        
        if (screenWidth == 414.0 && screenHeight == 736.0) {
            PhoneScreenType = "6.7.plus"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    override func viewWillLayoutSubviews() {
        
        
        if PhoneScreenType == "4" {
            
            
            if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft || UIDevice.current.orientation == UIDeviceOrientation.landscapeRight {
                
                
            }
            
            else{
                
            }
        
        }
        
        
        if PhoneScreenType == "5" {
            
            
            if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft || UIDevice.current.orientation == UIDeviceOrientation.landscapeRight {
                
                
            }
            
            else{
                
                
                var rect = button0.frame
                rect.origin.x = 10
                rect.origin.y = 20
                rect.size.width = 55
                rect.size.height = 55
                button0.frame = rect
                
                rect = button1.frame
                rect.origin.x = 70
                rect.origin.y = 20
                rect.size.width = 55
                rect.size.height = 55
                button1.frame = rect
                
                rect = button2.frame
                rect.origin.x = 130
                rect.origin.y = 20
                rect.size.width = 55
                rect.size.height = 55
                button2.frame = rect
                
                rect = button3.frame
                rect.origin.x = 190
                rect.origin.y = 20
                rect.size.width = 55
                rect.size.height = 55
                button3.frame = rect
                
                rect = button4.frame
                rect.origin.x = 250
                rect.origin.y = 20
                rect.size.width = 55
                rect.size.height = 55
                button4.frame = rect
                
                rect = button5.frame
                rect.origin.x = 10
                rect.origin.y = 100
                rect.size.width = 55
                rect.size.height = 55
                button5.frame = rect
                
                rect = button6.frame
                rect.origin.x = 70
                rect.origin.y = 100
                rect.size.width = 55
                rect.size.height = 55
                button6.frame = rect
                
                rect = button7.frame
                rect.origin.x = 130
                rect.origin.y = 100
                rect.size.width = 55
                rect.size.height = 55
                button7.frame = rect
                
                rect = button8.frame
                rect.origin.x = 190
                rect.origin.y = 100
                rect.size.width = 55
                rect.size.height = 55
                button8.frame = rect
                
                rect = button9.frame
                rect.origin.x = 250
                rect.origin.y = 100
                rect.size.width = 55
                rect.size.height = 55
                button9.frame = rect
                
                rect = lblNumber1.frame
                rect.origin.x = 10
                rect.origin.y = 165
                rect.size.width = 65
                rect.size.height = 100
                lblNumber1.frame = rect
                
                rect = lblPlusSign.frame
                rect.origin.x = 75
                rect.origin.y = 165
                rect.size.width = 65
                rect.size.height = 100
                lblPlusSign.frame = rect
                
                rect = lblNumber2.frame
                rect.origin.x = 140
                rect.origin.y = 165
                rect.size.width = 65
                rect.size.height = 100
                lblNumber2.frame = rect
                
                rect = lblEqualsQM.frame
                rect.origin.x = 205
                rect.origin.y = 165
                rect.size.width = 195
                rect.size.height = 100
                lblEqualsQM.frame = rect
                
                rect = plateImage.frame
                rect.origin.x = 0
                rect.origin.y = 375
                rect.size.width = 320
                rect.size.height = 250
                plateImage.frame = rect
                
                rect = apple1.frame
                rect.origin.x = 30
                rect.origin.y = 458
                rect.size.width = 55
                rect.size.height = 55
                apple1.frame = rect
                
                rect = apple2.frame
                rect.origin.x = 65
                rect.origin.y = 440
                rect.size.width = 55
                rect.size.height = 55
                apple2.frame = rect
                
                rect = apple3.frame
                rect.origin.x = 130
                rect.origin.y = 440
                rect.size.width = 55
                rect.size.height = 55
                apple3.frame = rect
                
                rect = apple4.frame
                rect.origin.x = 190
                rect.origin.y = 440
                rect.size.width = 55
                rect.size.height = 55
                apple4.frame = rect
                
                rect = apple5.frame
                rect.origin.x = 240
                rect.origin.y = 458
                rect.size.width = 55
                rect.size.height = 55
                apple5.frame = rect
                
                rect = apple6.frame
                rect.origin.x = 85
                rect.origin.y = 462
                rect.size.width = 55
                rect.size.height = 55
                apple6.frame = rect
                
                rect = apple7.frame
                rect.origin.x = 65
                rect.origin.y = 485
                rect.size.width = 55
                rect.size.height = 55
                apple7.frame = rect
                
                rect = apple8.frame
                rect.origin.x = 130
                rect.origin.y = 485
                rect.size.width = 55
                rect.size.height = 55
                apple8.frame = rect
                
                rect = apple9.frame
                rect.origin.x = 190
                rect.origin.y = 485
                rect.size.width = 55
                rect.size.height = 55
                apple9.frame = rect
                
                rect = apple10.frame
                rect.origin.x = 160
                rect.origin.y = 462
                rect.size.width = 55
                rect.size.height = 55
                apple10.frame = rect
                
            }
            
        }
        
        if PhoneScreenType == "6.7" {
            
            
            if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft || UIDevice.current.orientation == UIDeviceOrientation.landscapeRight {
                
                
            }
            
            else{
                
                var rect = button0.frame
                rect.origin.x = 20
                rect.origin.y = 20
                rect.size.width = 55
                rect.size.height = 55
                button0.frame = rect
                
                rect = button1.frame
                rect.origin.x = 90
                rect.origin.y = 20
                rect.size.width = 55
                rect.size.height = 55
                button1.frame = rect
                
                rect = button2.frame
                rect.origin.x = 160
                rect.origin.y = 20
                rect.size.width = 55
                rect.size.height = 55
                button2.frame = rect
                
                rect = button3.frame
                rect.origin.x = 230
                rect.origin.y = 20
                rect.size.width = 55
                rect.size.height = 55
                button3.frame = rect
                
                rect = button4.frame
                rect.origin.x = 300
                rect.origin.y = 20
                rect.size.width = 55
                rect.size.height = 55
                button4.frame = rect
                
                rect = button5.frame
                rect.origin.x = 20
                rect.origin.y = 100
                rect.size.width = 55
                rect.size.height = 55
                button5.frame = rect
                
                rect = button6.frame
                rect.origin.x = 90
                rect.origin.y = 100
                rect.size.width = 55
                rect.size.height = 55
                button6.frame = rect
                
                rect = button7.frame
                rect.origin.x = 160
                rect.origin.y = 100
                rect.size.width = 55
                rect.size.height = 55
                button7.frame = rect
                
                rect = button8.frame
                rect.origin.x = 230
                rect.origin.y = 100
                rect.size.width = 55
                rect.size.height = 55
                button8.frame = rect
                
                rect = button9.frame
                rect.origin.x = 300
                rect.origin.y = 100
                rect.size.width = 55
                rect.size.height = 55
                button9.frame = rect
                
                rect = lblNumber1.frame
                rect.origin.x = 20
                rect.origin.y = 190
                rect.size.width = 75
                rect.size.height = 100
                lblNumber1.frame = rect
                
                rect = lblPlusSign.frame
                rect.origin.x = 95
                rect.origin.y = 190
                rect.size.width = 75
                rect.size.height = 100
                lblPlusSign.frame = rect
                
                rect = lblNumber2.frame
                rect.origin.x = 170
                rect.origin.y = 190
                rect.size.width = 75
                rect.size.height = 100
                lblNumber2.frame = rect
                
                rect = lblEqualsQM.frame
                rect.origin.x = 245
                rect.origin.y = 190
                rect.size.width = 225
                rect.size.height = 100
                lblEqualsQM.frame = rect
                
                rect = plateImage.frame
                rect.origin.x = 0
                rect.origin.y = 420
                rect.size.width = 375
                rect.size.height = 300
                plateImage.frame = rect
                
                rect = apple1.frame
                rect.origin.x = 45
                rect.origin.y = 528
                rect.size.width = 55
                rect.size.height = 55
                apple1.frame = rect
                
                rect = apple2.frame
                rect.origin.x = 100
                rect.origin.y = 510
                rect.size.width = 55
                rect.size.height = 55
                apple2.frame = rect
                
                rect = apple3.frame
                rect.origin.x = 165
                rect.origin.y = 510
                rect.size.width = 55
                rect.size.height = 55
                apple3.frame = rect
                
                rect = apple4.frame
                rect.origin.x = 225
                rect.origin.y = 510
                rect.size.width = 55
                rect.size.height = 55
                apple4.frame = rect
                
                rect = apple5.frame
                rect.origin.x = 290
                rect.origin.y = 528
                rect.size.width = 55
                rect.size.height = 55
                apple5.frame = rect
                
                rect = apple6.frame
                rect.origin.x = 130
                rect.origin.y = 532
                rect.size.width = 55
                rect.size.height = 55
                apple6.frame = rect
                
                rect = apple7.frame
                rect.origin.x = 100
                rect.origin.y = 555
                rect.size.width = 55
                rect.size.height = 55
                apple7.frame = rect
                
                rect = apple8.frame
                rect.origin.x = 165
                rect.origin.y = 555
                rect.size.width = 55
                rect.size.height = 55
                apple8.frame = rect
                
                rect = apple9.frame
                rect.origin.x = 225
                rect.origin.y = 555
                rect.size.width = 55
                rect.size.height = 55
                apple9.frame = rect
                
                rect = apple10.frame
                rect.origin.x = 195
                rect.origin.y = 532
                rect.size.width = 55
                rect.size.height = 55
                apple10.frame = rect
               
                
            }
            
        }
        
        if PhoneScreenType == "6.7.plus" {
            
            
            if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft || UIDevice.current.orientation == UIDeviceOrientation.landscapeRight {
                
                
            }
            
            else{
                var rect = button0.frame
                rect.origin.x = 20
                rect.origin.y = 20
                rect.size.width = 60
                rect.size.height = 60
                button0.frame = rect
                
                rect = button1.frame
                rect.origin.x = 95
                rect.origin.y = 20
                rect.size.width = 60
                rect.size.height = 60
                button1.frame = rect
                
                rect = button2.frame
                rect.origin.x = 170
                rect.origin.y = 20
                rect.size.width = 60
                rect.size.height = 60
                button2.frame = rect
                
                rect = button3.frame
                rect.origin.x = 245
                rect.origin.y = 20
                rect.size.width = 60
                rect.size.height = 60
                button3.frame = rect
                
                rect = button4.frame
                rect.origin.x = 320
                rect.origin.y = 20
                rect.size.width = 60
                rect.size.height = 60
                button4.frame = rect
                
                rect = button5.frame
                rect.origin.x = 20
                rect.origin.y = 100
                rect.size.width = 60
                rect.size.height = 60
                button5.frame = rect
                
                rect = button6.frame
                rect.origin.x = 95
                rect.origin.y = 100
                rect.size.width = 60
                rect.size.height = 60
                button6.frame = rect
                
                rect = button7.frame
                rect.origin.x = 170
                rect.origin.y = 100
                rect.size.width = 60
                rect.size.height = 60
                button7.frame = rect
                
                rect = button8.frame
                rect.origin.x = 245
                rect.origin.y = 100
                rect.size.width = 60
                rect.size.height = 60
                button8.frame = rect
                
                rect = button9.frame
                rect.origin.x = 320
                rect.origin.y = 100
                rect.size.width = 60
                rect.size.height = 60
                button9.frame = rect
                
                rect = lblNumber1.frame
                rect.origin.x = 30
                rect.origin.y = 190
                rect.size.width = 75
                rect.size.height = 100
                lblNumber1.frame = rect
                
                rect = lblPlusSign.frame
                rect.origin.x = 105
                rect.origin.y = 190
                rect.size.width = 75
                rect.size.height = 100
                lblPlusSign.frame = rect
                
                rect = lblNumber2.frame
                rect.origin.x = 180
                rect.origin.y = 190
                rect.size.width = 75
                rect.size.height = 100
                lblNumber2.frame = rect
                
                rect = lblEqualsQM.frame
                rect.origin.x = 255
                rect.origin.y = 190
                rect.size.width = 225
                rect.size.height = 100
                lblEqualsQM.frame = rect
                
                rect = plateImage.frame
                rect.origin.x = 0
                rect.origin.y = 480
                rect.size.width = 425
                rect.size.height = 350
                plateImage.frame = rect
                
                rect = apple1.frame
                rect.origin.x = 55
                rect.origin.y = 612
                rect.size.width = 60
                rect.size.height = 60
                apple1.frame = rect
                
                rect = apple2.frame
                rect.origin.x = 110
                rect.origin.y = 590
                rect.size.width = 60
                rect.size.height = 60
                apple2.frame = rect
                
                rect = apple3.frame
                rect.origin.x = 175
                rect.origin.y = 590
                rect.size.width = 60
                rect.size.height = 60
                apple3.frame = rect
                
                rect = apple4.frame
                rect.origin.x = 235
                rect.origin.y = 590
                rect.size.width = 60
                rect.size.height = 60
                apple4.frame = rect
                
                rect = apple5.frame
                rect.origin.x = 300
                rect.origin.y = 612
                rect.size.width = 60
                rect.size.height = 60
                apple5.frame = rect
                
                rect = apple6.frame
                rect.origin.x = 140
                rect.origin.y = 612
                rect.size.width = 60
                rect.size.height = 60
                apple6.frame = rect
                
                rect = apple7.frame
                rect.origin.x = 110
                rect.origin.y = 635
                rect.size.width = 60
                rect.size.height = 60
                apple7.frame = rect
                
                rect = apple8.frame
                rect.origin.x = 175
                rect.origin.y = 635
                rect.size.width = 60
                rect.size.height = 60
                apple8.frame = rect
                
                rect = apple9.frame
                rect.origin.x = 235
                rect.origin.y = 635
                rect.size.width = 60
                rect.size.height = 60
                apple9.frame = rect
                
                rect = apple10.frame
                rect.origin.x = 205
                rect.origin.y = 612
                rect.size.width = 60
                rect.size.height = 60
                apple10.frame = rect
                
            }
            
        }



        
    
    }
    
    
    //handles button clicks to submit answer
    @IBAction func tuButton0(_ sender: AnyObject) {
        if (intTotal == 0) {
            
            wellDoneView.isHidden = false
           
        }
    }
    
    @IBAction func tuButton1(_ sender: AnyObject) {
        if (intTotal == 1) {
            
            wellDoneView.isHidden = false
            
        }
    }
    
    
    @IBAction func tuButton2(_ sender: AnyObject) {
        if (intTotal == 2) {
            
            
            wellDoneView.isHidden = false
            
        }
    }
    
    
    @IBAction func tuButton3(_ sender: AnyObject) {
        if (intTotal == 3) {
            
            wellDoneView.isHidden = false
            
        }
    }
    
    
    @IBAction func tuButton4(_ sender: AnyObject) {
        if (intTotal == 4) {
            
            wellDoneView.isHidden = false
            
        }
    }
    
    
    @IBAction func tuButton5(_ sender: AnyObject) {
        if (intTotal == 5) {
            
            wellDoneView.isHidden = false
        
        }
    }
    
    
    @IBAction func tuButton6(_ sender: AnyObject) {
        if (intTotal == 6) {
            
            wellDoneView.isHidden = false
        }
    }
    
    @IBAction func tuButton7(_ sender: AnyObject) {
        if (intTotal == 7) {
            
            
            wellDoneView.isHidden = false
       
        }
    }
    
    
    @IBAction func tuButton8(_ sender: AnyObject) {
        if (intTotal == 8) {
            
            
            wellDoneView.isHidden = false
 
           
        }
    }
    
    @IBAction func tuButton9(_ sender: AnyObject) {
        
        
        if (intTotal == 9) {
            
           wellDoneView.isHidden = false
            
        
        }
    }
    
    
//dismiss welldone view, call the functiosn to initiate the game again
    @IBAction func btnHideWellDoneView(_ sender: AnyObject) {
        
        viewDidLoad()
        viewWillLayoutSubviews()
        
    }
 
    
    
    
    
}

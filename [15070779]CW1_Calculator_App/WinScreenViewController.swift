//
//  WinScreenViewController.swift
//  [15070779]CW1_Calculator_App
//
//  Created by Paul Treadwell on 22/10/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import UIKit

class WinScreenViewController: UIViewController {

    @IBOutlet weak var lblWellDoneMessage: UILabel!
    @IBOutlet weak var btnCauseSegue: UIButton!
    @IBOutlet weak var imgViewStar1: flashingimage_UIImageView!
    @IBOutlet weak var imgViewStar2: flashingimage_UIImageView!
    @IBOutlet weak var imgViewStar3: flashingimage_UIImageView!
    @IBOutlet weak var imgViewStar4: flashingimage_UIImageView!
    @IBOutlet weak var imgViewStar5: flashingimage_UIImageView!
    @IBOutlet weak var imgViewStar6: flashingimage_UIImageView!
    @IBOutlet weak var imgViewStar7: flashingimage_UIImageView!
    @IBOutlet weak var imgViewStar8: flashingimage_UIImageView!
    @IBOutlet weak var imgViewStar9: flashingimage_UIImageView!
    @IBOutlet weak var imgViewStar10: flashingimage_UIImageView!
    @IBOutlet weak var imgViewStar11: flashingimage_UIImageView!
    @IBOutlet weak var imgViewStar12: flashingimage_UIImageView!
    
    
    var screenSize: CGRect?
    var screenWidth:CGFloat?
    var screenHeight:CGFloat?
    var PhoneScreenType: NSString?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        screenSize = UIScreen.main.bounds
        screenWidth = screenSize?.width
        screenHeight = screenSize?.height
        
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
//cause segue to main screen when clicked
    @IBAction func btnReturnToMain(_ sender: AnyObject) {
        
        self.performSegue(withIdentifier: "winToMain", sender: nil)
    }
    
    
    // this routine manages certain animation of elements on this view. DO NOT put this code inside its own subclass of the UIImageView as the animations are nested inside each other and hence are are relative to each other. Dping this would make the routine more complicated and time consuming connecting classes to other classes
    
    override func viewWillAppear(_ animated: Bool) {
        
        //take off the value of the width of the screen from the x value of this particular UIImageView item > pulls item off of screen to the left
        lblWellDoneMessage.center.x -= view.bounds.width
        
        
         //add on the value of the width of the screen from the x value of this particular button item > pulls item off of screen to the right
        btnCauseSegue.center.x += view.bounds.width
        
        
        //animate the well done label in from the left to the right
        
        UIView.animate(withDuration: 0.5, animations: {
            self.lblWellDoneMessage.center.x += self.view.bounds.width
            
            
            //animate the button in from the right to the left, with a delay of 0.3, nested inside previous animation - makes delay relative to entrance of first animation
            
            UIView.animate(withDuration: 0.5, delay: 0.3, animations: {
                self.btnCauseSegue.center.x -= self.view.bounds.width
            })
        })
        
        
    }
    
    
    override func viewDidLayoutSubviews() {
    
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
                
                var rect = imgViewStar1.frame
                rect.origin.x = -35
                rect.origin.y = 0
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar1.frame = rect
                
                rect = imgViewStar2.frame
                rect.origin.x = 70
                rect.origin.y = 42
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar2.frame = rect
                
                rect = imgViewStar3.frame
                rect.origin.x = 183
                rect.origin.y = 26
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar3.frame = rect
                
                rect = imgViewStar4.frame
                rect.origin.x = 286
                rect.origin.y = 74
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar4.frame = rect
                
                rect = imgViewStar5.frame
                rect.origin.x = -27
                rect.origin.y = 222
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar5.frame = rect
                
                rect = imgViewStar6.frame
                rect.origin.x = 209
                rect.origin.y = 245
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar6.frame = rect
                
                rect = imgViewStar7.frame
                rect.origin.x = -27
                rect.origin.y = 376
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar7.frame = rect
                
                rect = imgViewStar8.frame
                rect.origin.x = 88
                rect.origin.y = 425
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar8.frame = rect
                
                rect = imgViewStar9.frame
                rect.origin.x = 192
                rect.origin.y = 395
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar9.frame = rect
                
                rect = imgViewStar10.frame
                rect.origin.x = 277
                rect.origin.y = 335
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar10.frame = rect
                
                rect = imgViewStar11.frame
                rect.origin.x = 16
                rect.origin.y = 516
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar11.frame = rect
                
                rect = imgViewStar12.frame
                rect.origin.x = 277
                rect.origin.y = 474
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar12.frame = rect
                
                rect = lblWellDoneMessage.frame
                rect.origin.x = 23
                rect.origin.y = 124
                rect.size.width = 274
                rect.size.height = 151
                lblWellDoneMessage.frame = rect
                
                rect = btnCauseSegue.frame
                rect.origin.x = 120
                rect.origin.y = 287
                rect.size.width = 81
                rect.size.height = 79
                btnCauseSegue.frame = rect
                
                
            }
            
        }
        
        if PhoneScreenType == "6.7" {
            
            
            if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft || UIDevice.current.orientation == UIDeviceOrientation.landscapeRight {
                
            }
                
            else{
                var rect = imgViewStar1.frame
                rect.origin.x = -35
                rect.origin.y = 14
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar1.frame = rect
                
                rect = imgViewStar2.frame
                rect.origin.x = 101
                rect.origin.y = 28
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar2.frame = rect
                
                rect = imgViewStar3.frame
                rect.origin.x = 233
                rect.origin.y = 55
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar3.frame = rect
                
                rect = imgViewStar4.frame
                rect.origin.x = 342
                rect.origin.y = 28
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar4.frame = rect
                
                rect = imgViewStar5.frame
                rect.origin.x = -21
                rect.origin.y = 201
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar5.frame = rect
                
                rect = imgViewStar6.frame
                rect.origin.x = 282
                rect.origin.y = 245
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar6.frame = rect
                
                rect = imgViewStar7.frame
                rect.origin.x = 16
                rect.origin.y = 343
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar7.frame = rect
                
                rect = imgViewStar8.frame
                rect.origin.x = 107
                rect.origin.y = 456
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar8.frame = rect
                
                rect = imgViewStar9.frame
                rect.origin.x = 215
                rect.origin.y = 501
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar9.frame = rect
                
                rect = imgViewStar10.frame
                rect.origin.x = 267
                rect.origin.y = 380
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar10.frame = rect
                
                rect = imgViewStar11.frame
                rect.origin.x = 17
                rect.origin.y = 573
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar11.frame = rect
                
                rect = imgViewStar12.frame
                rect.origin.x = 334
                rect.origin.y = 573
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar12.frame = rect
                
                rect = lblWellDoneMessage.frame
                rect.origin.x = 50
                rect.origin.y = 124
                rect.size.width = 274
                rect.size.height = 151
                lblWellDoneMessage.frame = rect
                
                rect = btnCauseSegue.frame
                rect.origin.x = 147
                rect.origin.y = 294
                rect.size.width = 81
                rect.size.height = 79
                btnCauseSegue.frame = rect
                
                
            }
            
        }
        
        if PhoneScreenType == "6.7.plus" {
            
            
            if UIDevice.current.orientation == UIDeviceOrientation.landscapeLeft || UIDevice.current.orientation == UIDeviceOrientation.landscapeRight {
                
            }
                
            else{
                
                //tried resizing the stars programatically and on screen but it didn't like it, they disappeared. This might be because these are being called and initialised by a sub class of the UIImageView class
                var rect = imgViewStar1.frame
                rect.origin.x = -35
                rect.origin.y = 14
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar1.frame = rect
                
                rect = imgViewStar2.frame
                rect.origin.x = 101
                rect.origin.y = 28
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar2.frame = rect
                
                rect = imgViewStar3.frame
                rect.origin.x = 233
                rect.origin.y = 55
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar3.frame = rect
                
                rect = imgViewStar4.frame
                rect.origin.x = 366
                rect.origin.y = 20
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar4.frame = rect
                
                rect = imgViewStar5.frame
                rect.origin.x = -22
                rect.origin.y = 223
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar5.frame = rect
                
                rect = imgViewStar6.frame
                rect.origin.x = 350
                rect.origin.y = 263
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar6.frame = rect
                
                rect = imgViewStar7.frame
                rect.origin.x = 60
                rect.origin.y = 412
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar7.frame = rect
                
                rect = imgViewStar8.frame
                rect.origin.x = 290
                rect.origin.y = 383
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar8.frame = rect
                
                rect = imgViewStar9.frame
                rect.origin.x = 373
                rect.origin.y = 486
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar9.frame = rect
                
                rect = imgViewStar10.frame
                rect.origin.x = 167
                rect.origin.y = 541
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar10.frame = rect
                
                rect = imgViewStar11.frame
                rect.origin.x = -22
                rect.origin.y = 635
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar11.frame = rect
                
                rect = imgViewStar12.frame
                rect.origin.x = 318
                rect.origin.y = 642
                rect.size.width = 77
                rect.size.height = 74
                imgViewStar12.frame = rect
                
                //frame for well done message increased and centred so font can be bigger on plus screen
                rect = lblWellDoneMessage.frame
                rect.origin.x = 48
                rect.origin.y = 135
                rect.size.width = 315
                rect.size.height = 240
                lblWellDoneMessage.frame = rect
                
                rect = btnCauseSegue.frame
                rect.origin.x = 167
                rect.origin.y = 365
                rect.size.width = 81
                rect.size.height = 79
                btnCauseSegue.frame = rect
                
                //font increased for plus sized scr
                lblWellDoneMessage.font = lblWellDoneMessage.font.withSize(66.0)

            }
            
        }
    
        }
    
    
    
 
}

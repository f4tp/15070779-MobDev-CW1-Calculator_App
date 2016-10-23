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
    
    //stars set up... get rid of when flashing image class has been successfully implemented
    
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var star3: UIImageView!
    @IBOutlet weak var star4: UIImageView!
    @IBOutlet weak var star5: UIImageView!
    @IBOutlet weak var star6: UIImageView!
    @IBOutlet weak var star7: UIImageView!
    @IBOutlet weak var star8: UIImageView!
    @IBOutlet weak var star9: UIImageView!
    @IBOutlet weak var star10: UIImageView!
    @IBOutlet weak var star11: UIImageView!
    @IBOutlet weak var star12: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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

    

    @IBAction func btnReturnToMain(_ sender: AnyObject) {
        
        self.performSegue(withIdentifier: "winToMain", sender: nil)
    }
    
    
    // this routine manages the animation of elements on this view
    override func viewWillAppear(_ animated: Bool) {
        
        //pull the well done label off to the left of the bounds of the view (off the screen assuming it isn't bigger than the width of the screen)
        lblWellDoneMessage.center.x -= view.bounds.width
        
        
        //pull the well done label off to the right of the bounds of the view (off the screen assuming it isn't bigger than the width of the screen)
        btnCauseSegue.center.x += view.bounds.width
        
        
        //animate the well done label in from the left to the right
        
        UIView.animate(withDuration: 0.5, animations: {
            self.lblWellDoneMessage.center.x += self.view.bounds.width
            
            
            //animate the button in from the right to the left, with a delay of 0.3, nested inside this animation for the relative delay
            
            UIView.animate(withDuration: 0.5, delay: 0.3, animations: {
                self.btnCauseSegue.center.x -= self.view.bounds.width
            })
        })
        
        //using this causes the button to stop working so I might need to nest the button press event inside of it maybe?
       
        
        //12 stars animated, delete once flashing class has been implemented
        UIView.animate(withDuration: 1.5, delay: 0.0, options: [.repeat, .autoreverse], animations: {
            
            self.star1.alpha -= 1.0
        })
        
        UIView.animate(withDuration: 1.5, delay: 0.1, options: [.repeat, .autoreverse], animations: {
            
            self.star2.alpha -= 1.0
        })

        UIView.animate(withDuration: 1.5, delay: 0.2, options: [.repeat, .autoreverse], animations: {
            
            self.star3.alpha -= 1.0
        })

        UIView.animate(withDuration: 1.5, delay: 0.3, options: [.repeat, .autoreverse], animations: {
            
            self.star4.alpha -= 1.0
        })

        UIView.animate(withDuration: 1.5, delay: 0.4, options: [.repeat, .autoreverse], animations: {
            
            self.star5.alpha -= 1.0
        })

        UIView.animate(withDuration: 1.5, delay: 0.5, options: [.repeat, .autoreverse], animations: {
            
            self.star6.alpha -= 1.0
        })

        UIView.animate(withDuration: 1.5, delay: 0.6, options: [.repeat, .autoreverse], animations: {
            
            self.star7.alpha -= 1.0
        })

        UIView.animate(withDuration: 1.5, delay: 0.7, options: [.repeat, .autoreverse], animations: {
            
            self.star8.alpha -= 1.0
        })

        UIView.animate(withDuration: 1.5, delay: 0.8, options: [.repeat, .autoreverse], animations: {
            
            self.star9.alpha -= 1.0
        })

        UIView.animate(withDuration: 1.5, delay: 0.9, options: [.repeat, .autoreverse], animations: {
            
            self.star10.alpha -= 1.0
        })

        UIView.animate(withDuration: 1.5, delay: 1.0, options: [.repeat, .autoreverse], animations: {
            
            self.star11.alpha -= 1.0
        })

        UIView.animate(withDuration: 1.5, delay: 1.1, options: [.repeat, .autoreverse], animations: {
            
            self.star12.alpha -= 1.0
        })

        
        
        
    }
 
}

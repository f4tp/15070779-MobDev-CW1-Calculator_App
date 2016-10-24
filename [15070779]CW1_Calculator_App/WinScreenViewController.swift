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
 
}

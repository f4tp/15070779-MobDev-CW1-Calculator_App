//
//  draggable:UIImageView.swift
//  Dragged-Image_Test
//
//  Created by Paul Treadwell on 16/10/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import UIKit


class draggable_UIImageView: UIImageView {

    var startLocation: CGPoint?
    var screenSize: CGRect?
    var screenWidth:CGFloat?
    var screenHeight:CGFloat?
    var PhoneScreenType: NSString?
    var newCenter = CGPoint (x:0, y:0)
    var applesPlacedLeft: Int = 0
    var applesPlacedRight: Int = 0
    
    
    
    override func layoutSubviews() {
        
        
        screenSize = UIScreen.main.bounds
        screenWidth = screenSize?.width
        screenHeight = screenSize?.height
        
        //if (screenWidth == 320.0 && screenHeight == 480.0) {            PhoneScreenType = "4"
        //}
        
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        
        startLocation = touches.first?.location(in: self)
    }
    
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        
        //self.center = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
        newCenter = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
        //self.center = newCenter
        
        
        
        //constrain movements based on screen size
        
        if PhoneScreenType == "5" {
            
            if newCenter.y < 300 {
                newCenter.y = 300
                self.center = newCenter
            }
            
            else if newCenter.y > screenHeight! - 40 {
                newCenter.y = screenHeight! - 40
                self.center = newCenter
            }
                
            else{
                self.center = newCenter
            }
            
            
            if newCenter.x < 20 {
                
                newCenter.x = 20
                self.center = newCenter
                
            }
            
            else if newCenter.x > screenWidth!-20 {
                
                newCenter.x = screenWidth!-20
                self.center = newCenter
                
            }
            
            else {
                self.center = newCenter
            }
           
        }
        
        if PhoneScreenType == "6.7" {
            
            if newCenter.y < 300 {
                newCenter.y = 300
                self.center = newCenter
            }
                
            else if newCenter.y > screenHeight! - 40 {
                newCenter.y = screenHeight! - 40
                self.center = newCenter
            }
                
            else{
                self.center = newCenter
            }
            
            
            if newCenter.x < 20 {
                
                newCenter.x = 20
                self.center = newCenter
                
            }
                
            else if newCenter.x > screenWidth!-20 {
                
                newCenter.x = screenWidth!-20
                self.center = newCenter
                
            }
                
            else {
                self.center = newCenter
            }
            
        }
        
        if PhoneScreenType == "6.7.plus" {
            
            if newCenter.y < 300 {
                newCenter.y = 300
                self.center = newCenter
            }
                
            else if newCenter.y > screenHeight! - 45 {
                newCenter.y = screenHeight! - 45
                self.center = newCenter
            }
                
            else{
                self.center = newCenter
            }
            
            
            if newCenter.x < 25 {
                
                newCenter.x = 25
                self.center = newCenter
                
            }
                
            else if newCenter.x > screenWidth!-25 {
                
                newCenter.x = screenWidth!-25
                self.center = newCenter
                
            }
                
            else {
                self.center = newCenter
                //self.isUserInteractionEnabled = false
            }
            
        }
        
 
    }
    
    //implemented to 'snap' apples into place when the touch has finished
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        /*
     
        if PhoneScreenType == "5"  {
            
            if newCenter.y < 397 && newCenter.x < 127{
                
                if applesPlacedLeft == 0 {
                
                newCenter.y = 322
                newCenter.x = 50
                //self.isUserInteractionEnabled = false
                self.center = newCenter
                applesPlacedLeft = applesPlacedLeft + 1
                    
                }
                
                else if applesPlacedLeft == 1 {
                    
                    newCenter.y = 322
                    newCenter.x = 120
                    self.isUserInteractionEnabled = false
                    self.center = newCenter
                    applesPlacedLeft = applesPlacedLeft + 1
                    
                }
                
                else if applesPlacedLeft == 2 {
                    
                    newCenter.y = 356
                    newCenter.x = 25
                    self.isUserInteractionEnabled = false
                    applesPlacedLeft = applesPlacedLeft + 1
                    self.center = newCenter
                    
                }
                
                else if applesPlacedLeft == 3 {
                    
                    newCenter.y = 356
                    newCenter.x = 85
                    self.isUserInteractionEnabled = false
                    applesPlacedLeft = applesPlacedLeft + 1
                    self.center = newCenter
                    
                }
            
            
            
            }
        }
 
 */
    }
    
    
 }

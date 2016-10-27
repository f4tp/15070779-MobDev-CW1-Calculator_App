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
        
        var newCenter = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
        //self.center = newCenter
        
        
        
        //constrain movements
        
        if PhoneScreenType == "5" {
            
            if newCenter.y < 300 {
                newCenter.y = 300
                self.center = newCenter
            }
            
            else if newCenter.y > screenHeight! - 20 {
                newCenter.y = screenHeight! - 20
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
                
            else if newCenter.y > screenHeight! - 20 {
                newCenter.y = screenHeight! - 20
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
                
            else if newCenter.y > screenHeight! - 25 {
                newCenter.y = screenHeight! - 25
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
    
    /*
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
     
        touchReleaseFired = true
        
        //3 fire the method at the right time (on the event that the touchesEnded)
        if (delegate == nil){
            
            delegate!.touchFinished(varTouchFin: touchReleaseFired as! DataSentDelegate as! Bool)
     
        }
        
        
            */
     
        /*
        if (self.frame.intersects(self.frame)){
            
            
            
            self.isHidden = true
        }
 
        
    }
        */
    
    
}

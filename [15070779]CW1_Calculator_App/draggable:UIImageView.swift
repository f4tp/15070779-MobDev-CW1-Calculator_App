//
//  draggable:UIImageView.swift
//  Dragged-Image_Test
//
//  Created by Paul Treadwell on 16/10/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import UIKit

//routine allows you to attch to UIImageView Objects and they have drag functionality. Is a subclass of UIImageView Class.

class draggable_UIImageView: UIImageView {

    //measure start location of UIImageView to help set the coordintaes for the drag later. newCentre is where the UIImageview is going to, has to be initiliased so is given default values, these will be reasigned before they are used
    
    var startLocation: CGPoint?
    var newCenter = CGPoint (x:0, y:0)
  
    
    
    override func layoutSubviews() {
        
        //measure screen size to help set constraints for movement later, in its own procedure in another swift file
        measureScreenSize()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        //routine needs to get the first touch location, then moves it from here to the moved touches location
        startLocation = touches.first?.location(in: self)
    }
    
    //rotuine hndles the drag movement - routine is called many times per second to give dragged apple effect
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let currentLocation = touches.first?.location(in: self)
        let dx = currentLocation!.x - startLocation!.x
        let dy = currentLocation!.y - startLocation!.y
        

        
        newCenter = CGPoint(x: self.center.x+dx, y: self.center.y+dy)
        
   
        
    //constrain movements based on screen size, phonesize set from the measureScreenSize() procedure. Applies coordinate reassignment using the CGPoint variable newCenter, using values relative to screen size.
        
        if PhoneScreenType == "5" {
            
            if newCenter.y < 280 {
                newCenter.y = 280
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
            }
          
        }
        
        if PhoneScreenType == "6.7.plus" {
            
            if newCenter.y < 340 {
                newCenter.y = 340
                self.center = newCenter
            }
                
            else if newCenter.y > screenHeight! - 35 {
                newCenter.y = screenHeight! - 35
                self.center = newCenter
            }
                
            else{
                self.center = newCenter
            }
            
            
            if newCenter.x < 35 {
                
                newCenter.x = 25
                self.center = newCenter
                
            }
                
            else if newCenter.x > screenWidth!-35 {
                
                newCenter.x = screenWidth!-35
                self.center = newCenter
                
            }
                
            else {
                self.center = newCenter
               
            }
            
        }
        
 
    }
    
    
 }

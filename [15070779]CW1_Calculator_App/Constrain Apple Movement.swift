//
//  Constrain Apple Movement.swift
//  [15070779]CW1_Calculator_App
//
//  Created by Paul Treadwell on 19/11/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import Foundation
import UIKit

/*
 
 this routine is now redundant as the flawed apple drag routine used this with the pangestureRecognizer routine. This routine is now in the draggable:UIImageView class. I tried to get it to work in here then call it from the aforementioned class, but the 'self' reference to the instance of the UIIview object accessing the subClass wasn't able to be accessed in here. I had trouble transfering some data between files / classes (references to Outlets for example).
 
 
//routine tests screen size and sets apple constraints accordingly, by resetting coordinates of apple should they try to be dragged out of bounds. this is called in the MainViewController using a panGestureRecognizer, so it constantly called whilst being dragged
public func constrainAppleMovement(){
    
    
    if PhoneScreenType == "5" {
        if point.y < 280 {
            point.y = 280
            draggedView.center = point
            
        }
        else if point.y > screenHeight! - 40 {
            point.y = screenHeight! - 40
            draggedView.center = point
        }
        else {
            draggedView.center = point
        }
        
        if point.x < 20 {
            point.x = 20
            draggedView.center = point
        }
        else if point.x > screenWidth!-20 {
            
            point.x = screenWidth!-20
            draggedView.center = point
        }
        else {
            draggedView.center = point
        }
  
        
        
        
    }
    
    if PhoneScreenType == "6.7" {
        if point.y < 300 {
            point.y = 300
            draggedView.center = point
            
        }
        else if point.y > screenHeight! - 40 {
            point.y = screenHeight! - 40
            draggedView.center = point
        }
        else {
            draggedView.center = point
        }
        
        if point.x < 25 {
            point.x = 25
            draggedView.center = point
        }
        else if point.x > screenWidth!-25 {
            
            point.x = screenWidth!-25
            draggedView.center = point
        }
        else {
            draggedView.center = point
        }
     
    }
    
    
    if PhoneScreenType == "6.7.plus" {
        if point.y < 340 {
            point.y = 340
            draggedView.center = point
            
        }
        else if point.y > screenHeight! - 35 {
            point.y = screenHeight! - 35
            draggedView.center = point
        }
        else {
            draggedView.center = point
        }
        
        if point.x < 35 {
            point.x = 35
            draggedView.center = point
        }
        else if point.x > screenWidth!-35 {
            
            point.x = screenWidth!-35
            draggedView.center = point
        }
        else {
            draggedView.center = point
        }
        
       
    }
    
    
}
 
 */

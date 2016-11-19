//
//  Sound Selector Switch.swift
//  [15070779]CW1_Calculator_App
//
//  Created by Paul Treadwell on 06/11/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import Foundation
import UIKit


// switch to test which sound to play based on which random integers have been generated for the forumlae
public func playCorrectSound(){
    
    
    switch (intRandNumber1, intRandNumber2) {
        
    case (0,0):
        
        playsound(soundTitle: "0plus0", soundOfType: "m4a")
        
        
    case (0,1):
        
        playsound(soundTitle: "0plus1", soundOfType: "m4a")
        
    case (0,2):
        
        playsound(soundTitle: "0plus2", soundOfType: "m4a")
        
    case (0,3):
        
        playsound(soundTitle: "0plus3", soundOfType: "m4a")
        
    case (0,4):
        
        playsound(soundTitle: "0plus4", soundOfType: "m4a")
        
    case (1,0):
        
        playsound(soundTitle: "1plus0", soundOfType: "m4a")
        
    case (1,1):
        
        playsound(soundTitle: "1plus1", soundOfType: "m4a")
        
    case (1,2):
        
        playsound(soundTitle: "1plus2", soundOfType: "m4a")
        
    case (1,3):
        
        playsound(soundTitle: "1plus3", soundOfType: "m4a")
        
    case (1,4):
        
        playsound(soundTitle: "1plus4", soundOfType: "m4a")
        
    case (2,0):
        
        playsound(soundTitle: "2plus0", soundOfType: "m4a")
        
    case (2,1):
        
        playsound(soundTitle: "2plus1", soundOfType: "m4a")
        
    case (2,2):
        
        playsound(soundTitle: "2plus2", soundOfType: "m4a")
        
    case (2,3):
        
        playsound(soundTitle: "2plus3", soundOfType: "m4a")
        
    case (2,4):
        
        playsound(soundTitle: "2plus4", soundOfType: "m4a")
        
    case (3,0):
        
        playsound(soundTitle: "3plus0", soundOfType: "m4a")
        
    case (3,1):
        
        playsound(soundTitle: "3plus1", soundOfType: "m4a")
        
    case (3,2):
        
        playsound(soundTitle: "3plus2", soundOfType: "m4a")
        
    case (3,3):
        
        playsound(soundTitle: "3plus3", soundOfType: "m4a")
        
    case (3,4):
        
        playsound(soundTitle: "3plus4", soundOfType: "m4a")
        
    case (4,0):
        
        playsound(soundTitle: "4plus0", soundOfType: "m4a")
        
    case (4,1):
        
        playsound(soundTitle: "4plus1", soundOfType: "m4a")
        
    case (4,2):
        
        playsound(soundTitle: "4plus2", soundOfType: "m4a")
        
    case (4,3):
        
        playsound(soundTitle: "4plus3", soundOfType: "m4a")
        
    case (4,4):
        
        playsound(soundTitle: "4plus4", soundOfType: "m4a")
        
    default: break
        
        
    }
    
}

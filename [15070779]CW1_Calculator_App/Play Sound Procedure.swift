//
//  playSound() Procedure.swift
//  [15070779]CW1_Calculator_App
//
//  Created by Paul Treadwell on 06/11/2016.
//  Copyright © 2016 Paul Treadwell. All rights reserved.
//

import UIKit
import AVFoundation


   //play a sound using 2 passed string variables, these are the sound filename, and the file type (e.g. wav)

public func playsound(soundTitle: String, soundOfType: String){
    
    //var audioPlayer1: AVAudioPlayer!
    
    
    
    let audioFilePath = Bundle.main.path(forResource: soundTitle, ofType: soundOfType)
    
    if audioFilePath != nil {
        
        let audioFileUrl = NSURL.fileURL(withPath: audioFilePath!)
        
        
        do{
            
            
            try audioPlayer = AVAudioPlayer(contentsOf: audioFileUrl)
            audioPlayer.play()
        }
            
        catch  {
            
            //no catch statement implemented, this will be on a future revision
        }
        
        
    }
    
    
}

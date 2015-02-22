//
//  ViewController.swift
//  McGillAthletics
//
//  Created by Jonathan Arlauskas on 2015-02-21.
//  Copyright (c) 2015 Jonathan Arlauskas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var display: UILabel!

    
    @IBOutlet weak var fgm: UITextField!

    @IBOutlet weak var stls: UITextField!
    
    @IBOutlet weak var threePt: UITextField!
    
    @IBOutlet weak var fts: UITextField!
    
    @IBOutlet weak var blks: UITextField!
    
    @IBOutlet weak var orebs: UITextField!
    
    @IBOutlet weak var ass: UITextField!
    
    @IBOutlet weak var drebs: UITextField!
    
    @IBOutlet weak var fls: UITextField!
    
    @IBOutlet weak var ftmiss: UITextField!
    
    @IBOutlet weak var fgmiss: UITextField!
    
    @IBOutlet weak var tos: UITextField!
    
    @IBOutlet weak var mins: UITextField!
    
    
    
    @IBAction func calculate(sender: UIButton) {
        var fieldGoals : Double = NSString(string:fgm.text).doubleValue
        
        var steals : Double = NSString(string:stls.text).doubleValue
        
        var threesMade : Double = NSString(string:threePt.text).doubleValue
        
        var freeThrows : Double = NSString(string:fgm.text).doubleValue
        
        var blocks : Double = NSString(string:blks.text).doubleValue
        
        var offRebs : Double = NSString(string:orebs.text).doubleValue
        
        var assists : Double = NSString(string:ass.text).doubleValue
        
        var defRebs : Double = NSString(string:drebs.text).doubleValue
        
        var fouls : Double = NSString(string:fls.text).doubleValue
        
        var freeThrowMiss : Double = NSString(string:ftmiss.text).doubleValue
        
        var fieldgoalMiss : Double = NSString(string:fgmiss.text).doubleValue
        
        var minutes : Double = NSString(string:mins.text).doubleValue
        
        var turnovers : Double = NSString(string:tos.text).doubleValue
        
        let per1 : Double = ((fieldGoals * 85.920) + (steals * 53.897) + (threesMade * 51.757))
            
        let per2 : Double = ((freeThrows * 46.845) + (blocks * 39.190) + (offRebs * 39.190) + (assists * 34.677) + (defRebs * 14.707))
            
        let per3 : Double = ((fouls * 17.174) - (freeThrowMiss * 20.091))
            
        let per4 : Double = ((fieldgoalMiss * 39.190) - (turnovers * 53.897) * (1/minutes))
        
 
        let finalPER : Double = per1 + per2 - per3 - per4
        
        display.text = "\(finalPER)"
    }
   
    
    
    
    
    var displayValue : Double {
        get{
            return NSNumberFormatter().numberFromString(display.text!)!.doubleValue
        }
        set{
            display.text = "\(newValue)"
            
        }
        
    }



}

    
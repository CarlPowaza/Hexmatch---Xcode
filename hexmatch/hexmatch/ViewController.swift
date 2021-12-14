//
//  ViewController.swift
//  hexmatch
//
//  Created by student on 12/1/21.
//  Copyright © 2021 carl Powaza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    var hexList : [Card] = []
    
    // has the user clicked a card before this
    var matchTime : Bool = false
    var firstval : Int = -1
    
    
    @IBAction func resetButton(_ sender: Any) {
        hardReset()
    }
    
    /////reference to all my buttons
    @IBOutlet weak var hex1: UIButton!
    @IBOutlet weak var hex2: UIButton!
    @IBOutlet weak var hex3: UIButton!
    @IBOutlet weak var hex4: UIButton!
    @IBOutlet weak var hex5: UIButton!
    @IBOutlet weak var hex6: UIButton!
    ///////
    
    @IBAction func h1Touch(_ sender: Any) {
        if(!hexList[0].matched){
            
        let name = hexList[0].file
        hex1.setImage(UIImage(named:name), for: UIControl.State.normal)
        
   
        if(matchTime){
            if hexList[firstval].file == hexList[0].file{
                hexList[firstval].matched = true
                hexList[0].matched = true
                matchTime = false
                firstval = -1
                  reset()
            }else{
           
              reset()
                   
            }
                 
             }
            else{
                         matchTime = true
                         firstval = 0
                        }
        }
        else{
            matchTime = true
            firstval = 0
            }
        
        }
    
    

    
    
    @IBAction func h2Touch(_ sender: Any) {
                if(!hexList[1].matched){
                 
             let name = hexList[1].file
             hex2.setImage(UIImage(named:name), for: UIControl.State.normal)
             
        
             if(matchTime){
                 if hexList[firstval].file == hexList[1].file{
                     hexList[firstval].matched = true
                     hexList[1].matched = true
                     matchTime = false
                     firstval = -1
                      reset()
                 }else{
                
                   reset()
                        
                 }
                      
                  }
            else{
                matchTime = true
                firstval = 1
                }
             }
             else{
                 matchTime = true
                 firstval = 1
                 }
    }
    
    
    @IBAction func h3Touch(_ sender: Any) {
             if(!hexList[2].matched){
                 
             let name = hexList[2].file
             hex3.setImage(UIImage(named:name), for: UIControl.State.normal)
             
        
             if(matchTime){
                 if hexList[firstval].file == hexList[2].file{
                     hexList[firstval].matched = true
                     hexList[2].matched = true
                     matchTime = false
                     firstval = -1
                      reset()
                 }else{
                
                   reset()
                        
                 }
                      
                  }
                else{
                     matchTime = true
                     firstval = 2
                      }
             }
             else{
                 matchTime = true
                 firstval = 2
                 }
    }
    
    
    @IBAction func h4Touch(_ sender: Any) {
                        if(!hexList[3].matched){
                 
             let name = hexList[3].file
             hex4.setImage(UIImage(named:name), for: UIControl.State.normal)
             
        
             if(matchTime){
                 if hexList[firstval].file == hexList[3].file{
                     hexList[firstval].matched = true
                     hexList[3].matched = true
                     matchTime = false
                     firstval = -1
                      reset()
                 }else{
                
                   reset()
                        
                 }
                      
                  }
             else{
                 matchTime = true
                 firstval = 3
                    }
             }
             else{
                 matchTime = true
                 firstval = 3
                 }
    }
    
    
    @IBAction func h5Touch(_ sender: Any) {
                       if(!hexList[4].matched){
                 
             let name = hexList[4].file
             hex5.setImage(UIImage(named:name), for: UIControl.State.normal)
             
        
             if(matchTime){
                 if hexList[firstval].file == hexList[4].file{
                     hexList[firstval].matched = true
                     hexList[4].matched = true
                     matchTime = false
                     firstval = -1
                      reset()
                 }else{
                
                   reset()
                        
                 }
                      
                  }    else{
                               matchTime = true
                               firstval = 4
                              }
             }
             else{
                 matchTime = true
                 firstval = 4
                 }
    }
    

    
    @IBAction func h6Touch(_ sender: Any) {
            if(!hexList[5].matched){
                 
             let name = hexList[5].file
             hex6.setImage(UIImage(named:name), for: UIControl.State.normal)
             
        
             if(matchTime){
                 if hexList[firstval].file == hexList[5].file{
                     hexList[firstval].matched = true
                     hexList[5].matched = true
                     matchTime = false
                     firstval = -1
                      reset()
                 }else{
                
                   reset()
                        
                 }
                    
                  }
             else{
                 matchTime = true
                 firstval = 5
                }
             }
             else{
                 matchTime = true
                 firstval = 5
                 }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        hexList = generatePairs()
    }

    func generatePairs()->[Card]{
        var hexList = [Card]()
        
        var thing = 1
        
        //loops 3 times, each loop creates and adds a matching pair of cards into the list
    
        for value in 1...3{
            
            print(value)
            let hex1 = Card()
            
            hex1.file = "hex\(value)"
            hex1.id = thing
            thing = thing + 1
            
            hexList.append(hex1)
            
            let hex2 = Card()
            
            hex2.file = "hex\(value)"
            hex2.id = thing
            thing = thing + 1
            
            hexList.append(hex2)
        }
        hexList.shuffle()
        return hexList
    }
    
    func hardReset(){
   
                   hex1.setImage(UIImage(named:"base"), for: UIControl.State.normal)
        
            
           
                    hex2.setImage(UIImage(named:"base"), for: UIControl.State.normal)
                      
               
         
                    hex3.setImage(UIImage(named:"base"), for: UIControl.State.normal)
                      
        
                    hex4.setImage(UIImage(named:"base"), for: UIControl.State.normal)
                      
         
                    hex5.setImage(UIImage(named:"base"), for: UIControl.State.normal)
                      
          
                    hex6.setImage(UIImage(named:"base"), for: UIControl.State.normal)
        hexList = generatePairs()
                      
                  
    }
    
    func reset(){
        matchTime = false
        firstval = -1
        if !hexList[0].matched{
               hex1.setImage(UIImage(named:"base"), for: UIControl.State.normal)
    
        }
        if !hexList[1].matched{
                hex2.setImage(UIImage(named:"base"), for: UIControl.State.normal)
                  
              }
        if !hexList[2].matched{
                hex3.setImage(UIImage(named:"base"), for: UIControl.State.normal)
                  
              }
        if !hexList[3].matched{
                hex4.setImage(UIImage(named:"base"), for: UIControl.State.normal)
                  
              }
        if !hexList[4].matched{
                hex5.setImage(UIImage(named:"base"), for: UIControl.State.normal)
                  
              }
        if !hexList[5].matched{
                hex6.setImage(UIImage(named:"base"), for: UIControl.State.normal)
                  
              }
        
    }
}


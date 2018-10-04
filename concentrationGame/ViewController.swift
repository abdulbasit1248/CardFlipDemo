//
//  ViewController.swift
//  concentrationGame
//
//  Created by Abdul Basit on 04/10/2018.
//  Copyright © 2018 Abdul Basit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flipcount:Int = 0
    {
        didSet
        {
            flipCount.text="Flips: \(flipcount) "
        }
    }
  
    @IBOutlet weak var flipCount: UILabel!
    
    @IBOutlet var cardButtons:  [UIButton]!
    
    var EmojiChoices=["😡","😀","😨 "]
    
    @IBAction func touchCard(_ sender: UIButton) {
        //print("ghost")
        flipcount+=1
        if let cardNumbers=cardButtons.index(of: sender)
        {
            //print ("cardNumber\(cardNumbers)")
            flipcard(withemoji: EmojiChoices[cardNumbers], on: sender)

        }
        else
        {
            print("error")
        }
        
        
        //flipcard(withemoji: "😃", on: sender)
    }
    
    @IBAction func touchSecondCard(_ sender: UIButton) {
        flipcount+=1
    flipcard(withemoji: "😡  ", on: sender)
    }
    
    
    func flipcard(withemoji emoji:String,on button: UIButton)
    {
        if button.currentTitle  == emoji
        {
            print("in if state")
            button.setTitle("", for: UIControl.State.normal)
            button.titleLabel?.layer.opacity = 0.0
            button.backgroundColor = #colorLiteral(red: 1, green: 0.5291353134, blue: 0.135450821, alpha: 1)
        }
        else
        {
            print("in else state")
            button.setTitle(emoji, for: UIControl.State.normal)
            //button.title
            button.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        }
        
    }

}


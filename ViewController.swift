//
//  ViewController.swift
//  DiceApp
//
//  Created by Aaron Caines on 03/07/2017.
//  Copyright © 2017 Aaron Caines. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func rollDice(_ sender: Any) {
        
        let min : UInt32 = 1
        let max : UInt32 = 7
        
        let randomNumber = arc4random_uniform(max - min) + min
        label.text = String("Rolled a \(randomNumber)")
        imageView.image = UIImage(named: ("Dice\(randomNumber)"))
        
    }
    
    


}


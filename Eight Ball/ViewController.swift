//
//  ViewController.swift
//  Eight Ball
//
//  Created by Admin on 12/31/18.
//  Copyright © 2018 Hema. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var ballImageView : Int = 0
    var ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    
    @IBOutlet weak var ballImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func askButtonPressed(_ sender: Any) {
        
        updateBallImage ()    }
    
    func updateBallImage ()
    {
        
        ballImageView  = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named:ballArray[ballImageView])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        updateBallImage ()
        
    }
}


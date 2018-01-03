//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Kevin Ciampaglia on 1/2/18.
//  Copyright © 2018 Kevin Ciampaglia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var randomBallNumber : Int = 0
    var images = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        randomBallNumber = Int(arc4random_uniform(5))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func newBallImage(){
        imageView.image = UIImage(named : images[randomBallNumber])
    }
    

    @IBAction func askButtonPressed(_ sender: Any) {
        randomBallNumber = Int(arc4random_uniform(5))
        newBallImage()
    }
    
}


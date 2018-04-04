//
//  ViewController.swift
//  time
//
//  Created by D7703_23 on 2018. 4. 4..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
     var counter = 1
     var myTimer = Timer()
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var imageCounter: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imageCounter.text = String(counter)
    }
    
    @IBAction func stop(_ sender: Any) {
        myTimer.invalidate()
    }
    @IBAction func start(_ sender: Any) {
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(doAnimation), userInfo: nil, repeats: true)
    }
    @objc func doAnimation(){
        if counter == 5 {
            counter = 1
        } else {
            counter = counter + 1
        }
        image.image = UIImage(name: "frame\(counter).png")
        imageCounter.text = String(counter)
}

}




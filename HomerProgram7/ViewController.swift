//
//  ViewController.swift
//  HomerProgram7
//
//  Created by Marissa Homer on 4/23/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var happyBaldiImage: UIImageView!
    
    
    @IBOutlet weak var instructionsText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       //the user can interact with this object
        happyBaldiImage.isUserInteractionEnabled = true
        
        //create long press gesture
        let longPressGesture = UILongPressGestureRecognizer(target: self, action: #selector(self.longPress(recognizer:)))
        
        //minimum press time for gesture to be recognized
        longPressGesture.minimumPressDuration = 2
        
        //connect the long press gesture to the image
        happyBaldiImage.addGestureRecognizer(longPressGesture)
    }
    //the functionality when I do a long press on the image
    @objc func longPress(recognizer: UILongPressGestureRecognizer){
        happyBaldiImage.image = UIImage(named: "angrybaldi")
        instructionsText.text = "WHAT HAVE YOU DONE"
        instructionsText.textColor = .red
        
}
    

}

//
//  ViewController.swift
//  GestureDemo
//
//  Created by user187410 on 1/20/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
        view.addGestureRecognizer(swipeLeft)
        
        let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeRight.direction = UISwipeGestureRecognizer.Direction.right
        view.addGestureRecognizer(swipeRight)
        
        let swipeUP = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeUP.direction = UISwipeGestureRecognizer.Direction.up
        view.addGestureRecognizer(swipeUP)
        
        let swipeDown = UISwipeGestureRecognizer(target: self, action: #selector(swiped))
        swipeDown.direction = UISwipeGestureRecognizer.Direction.down
        view.addGestureRecognizer(swipeDown)
    }
    
    @objc func swiped(gesture: UISwipeGestureRecognizer){
        
        let swipeGesture = gesture as UISwipeGestureRecognizer
        
        //Printing Gesture
        switch swipeGesture.direction {
        case UISwipeGestureRecognizer.Direction.left:
            print("Swipe Left is Recognized")
        case UISwipeGestureRecognizer.Direction.right:
            print("Swipe Right is Recognized")
        case UISwipeGestureRecognizer.Direction.up:
            print("Swipe up is Recognized")
        case UISwipeGestureRecognizer.Direction.down:
            print("Swipe Down is Recognized")
        default:
            break
        }
    }

    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if event?.subtype == UIEvent.EventSubtype.motionShake{
            print("Phone is shacking")
        }
    }
}


//
//  ViewController.swift
//  DrawBall
//
//  Created by admin on 10/14/16.
//  Copyright © 2016 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var n:Int = 0
    var margin: CGFloat = 40
    @IBOutlet weak var lblNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func drawRawOfBall() {
        for index in 0..<n {
            for yindex in 0..<n {
                let image = UIImage(named: "green")
                let ball = UIImageView(image: image)
                
                ball.center = CGPoint(x: spaceBetweenBall() * CGFloat(index) + margin, y: spaceYBetweenBall() * CGFloat(yindex) + margin + 40)
                
                self.view.addSubview(ball)
            }
        }
    }
    
    func spaceBetweenBall() -> CGFloat {
        let space = (self.view.bounds.size.width - 2 * margin) / CGFloat(n - 1)
        return space
    }
    
    func spaceYBetweenBall() -> CGFloat {
        let space = (self.view.bounds.size.height - 40 - 2 * margin) / CGFloat(n - 1)
        return space
    }

    @IBAction func actionDraw(_ sender: AnyObject) {
        if let a = Int(lblNumber.text!) {
            n = a
        }
        if (n > 1) {
            drawRawOfBall()
        }
    }

}


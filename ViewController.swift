//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Richard Batista on 2/19/19.
//  Copyright © 2019 Richard Batista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
	var randomBallNumber: Int = 0
	@IBOutlet weak var ImageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		randomizeBallImage()
	}

	@IBAction func askButtonPressed(_ sender: Any) {
		randomizeBallImage()
	}
	
	func randomizeBallImage() {
		randomBallNumber = Int.random(in: 0 ... 4)
		ImageView.image = UIImage(named: ballArray[randomBallNumber])
	}
	
	override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
		randomizeBallImage()
	}
	
}


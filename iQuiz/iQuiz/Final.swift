//
//  Final.swift
//  iQuiz
//
//  Created by Anish Dhawan on 5/20/21.
//

import UIKit

class Final: UIViewController {

    @IBOutlet weak var marks: UILabel!
    @IBOutlet weak var compliment: UILabel!
    var totalCorrect = 0
    var questionArraySize = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if (totalCorrect == questionArraySize) {
            compliment.text = "Go chill!"
            marks.text = String(totalCorrect) + " / " + String(questionArraySize)
        } else {
            compliment.text = "Need work"
            marks.text = String(totalCorrect) + " / " + String(questionArraySize)
        }
    }
    
    @IBAction func backToHome(_ sender: Any) {
        performSegue(withIdentifier: "finalToHome", sender: self)
    }
    
    
}

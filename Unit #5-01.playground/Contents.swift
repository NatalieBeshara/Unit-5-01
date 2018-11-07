// Created on: 2-Nov-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program calculates the average of 10 random numbers
// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let randomNumbersLabel = UILabel()
    let calculateButton = UIButton()
    let answerLabel = UILabel()
    var randomNumbersArray: [Int] = []
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        
        
        randomNumbersLabel.text = " "
        randomNumbersLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(randomNumbersLabel)
        randomNumbersLabel.translatesAutoresizingMaskIntoConstraints = false
        randomNumbersLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        randomNumbersLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        
        for randomNumbers in 1...10 {
            var randomNumber : Int = Int(arc4random_uniform(100)+1)
            randomNumbersArray.append(randomNumber)
            randomNumbersLabel.text = randomNumbersLabel.text! + "\(randomNumber), "
        }
        
        calculateButton.setTitle("Calculate", for: UIControlState.normal)
        calculateButton.setTitleColor(.blue, for: .normal)
        calculateButton.addTarget(self, action: #selector(calculateAverage), for: .touchUpInside)
        view.addSubview(calculateButton)
        calculateButton.translatesAutoresizingMaskIntoConstraints = false
        calculateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        calculateButton.topAnchor.constraint(equalTo: randomNumbersLabel.bottomAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        answerLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        answerLabel.topAnchor.constraint(equalTo: calculateButton.bottomAnchor, constant: 20).isActive = true
        
    }
    @objc func calculateAverage() {
        //  
        
        var number = 0
        var average = 0
        
        
        for counter in 0...9 {
            average = average + randomNumbersArray[counter]
        }
        
        
        answerLabel.text = "The average is \(average/10)."
    }
    
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()

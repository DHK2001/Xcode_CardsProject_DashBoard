//
//  CardSelectionViewController.swift
//  CardWorkout
//
//  Created by Derek H. Galeas on 17/5/24.
//

import UIKit

class CardSelectionViewController: UIViewController {
    
    @IBOutlet var cardImageView: UIImageView!
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet var stopButton: UIButton!
    var stop = false
    
    var cards: [UIImage] = Deck.allValues
    
    let attributes: [NSAttributedString.Key: Any] = [
            .font: UIFont.boldSystemFont(ofSize: 19)
        ]
    
    var timer: Timer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startTimer()
        for button in buttons {
            button.layer.cornerRadius = 8
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        timer.invalidate()
    }
    
    func startTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(showRandomImage), userInfo: nil, repeats: true)
    }
    
    @objc func showRandomImage() {
        cardImageView.image = cards.randomElement() ?? UIImage(named: "AS")
    }

    @IBAction func stopButtonTapped(_ sender: Any) {
        if stop {
            let attributedTitle = NSAttributedString(string: "Stop!", attributes: attributes)
            stopButton.backgroundColor = .systemRed
            stopButton.setAttributedTitle(attributedTitle, for: .normal)
            startTimer()
        }else{
            let attributedTitle = NSAttributedString(string: "Restart", attributes: attributes)
            stopButton.backgroundColor = .systemGreen
            stopButton.setAttributedTitle(attributedTitle, for: .normal)
            timer.invalidate()
        }
        stop = !stop
    }
}

// Outlet is to get access to the objet to make change to the properties without doing it in the storyboard.
//Action is to do something when a button is tap.

//Array of outlest, outless collection is where we can put buttons in there so we can change the properties without repeating code.

//When deleting a outlet or action you also need to delete it from references.

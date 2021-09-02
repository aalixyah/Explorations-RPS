//
//  ViewController.swift
//  Rock paper scissors
//
//  Created by AALIYAH on 23/05/2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appsSign: UILabel!
    @IBOutlet weak var gameStatus: UILabel!
    @IBOutlet weak var rock: UIButton!
    @IBOutlet weak var paper: UIButton!
    @IBOutlet weak var scissors: UIButton!
    @IBOutlet weak var playAgain: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetBoard()
        
    }
    func resetBoard(){
        appsSign.text = "🤖"
        gameStatus.text = "Rock, Paper, Scissors"
        rock.isHidden = false
        rock.isEnabled = true
        paper.isHidden = false
        paper.isEnabled = true
        scissors.isHidden = false
        scissors.isEnabled = true
        playAgain.isHidden = true
    }
    
    func play(_ playerTurn: Sign) {
        rock.isEnabled = false
        paper.isEnabled = false
        scissors.isEnabled = false
        
        let opponment = randomSign()
        appsSign.text = opponment.emoji
        let gameResult = playerTurn.takeTurn(opponment)
        switch gameResult {
        case .draw:
            gameStatus.text = "It's a draw!"
        case .win:
        gameStatus.text = "You won!!!"
        case .loose:
        gameStatus.text = "You lose"
        case .start:
        gameStatus.text = "Rock, Paper Scissors?"
        }
        switch playerTurn {
        case .rock:
            rock.isHidden = false
            paper.isHidden = true
            scissors.isHidden = true
        case .paper:
            rock.isHidden = true
            paper.isHidden = false
            scissors.isHidden = true
        case .scissors:
            rock.isHidden = true
            paper.isHidden = true
            scissors.isHidden = false
       
        }
        playAgain.isHidden = false
    }
    
    
    @IBAction func playAgainSelected(_ sender: Any) {
        resetBoard()
    }
    
    @IBAction func rockSelected(_ sender: Any) {
        play(Sign.rock)
    }
    
    @IBAction func paperSelected(_ sender: Any) {
        play(Sign.paper)
    }
    
    @IBAction func scissorsSelected(_ sender: Any) {
        play(Sign.scissors)
    }
    
    
    
    
}


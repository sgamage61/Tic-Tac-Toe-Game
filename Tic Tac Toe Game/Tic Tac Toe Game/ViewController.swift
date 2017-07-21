//
//  ViewController.swift
//  Tic Tac Toe Game
//
//  Created by Suvin Gamage on 7/19/17.
//  Copyright © 2017 Suvin Gamage. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var winner: UILabel!
    
    var turn = 1
    var placements = [0,0,0,0,0,0,0,0,0]
    var playing = true
    @IBAction func press(sender: UIButton) {
        if placements[sender.tag-1] == 0{
            placements[sender.tag-1] = turn
        if turn == 1{
            sender.setImage(UIImage(named: "x.jpg"),forState: UIControlState.Normal)
            turn = 2
        }else{
            sender.setImage(UIImage(named: "o.jpg"),forState: UIControlState.Normal)
            turn = 1
        }
        }
        if placements[0] == placements[1] && placements[1] == placements[2] && placements[0] != 0{
            if(placements[0] == 1){
                winner.text = "Player 1 has won!"
            }else{
                winner.text = "Player 2 has won!"
            }
        }else if placements[3] == placements[4] && placements[4] == placements[5] && placements[3] != 0{
            if(placements[3] == 1){
                winner.text = "Player 1 has won!"
            }else{
                winner.text = "Player 2 has won!"
            }
        }else if placements[6] == placements[7] && placements[7] == placements[8] && placements[6] != 0{
            if(placements[6] == 1){
                winner.text = "Player 1 has won!"
            }else{
                winner.text = "Player 2 has won!"
            }
        }else if placements[0] == placements[3] && placements[3] == placements[6] && placements[0] != 0{
            if(placements[0] == 1){
                winner.text = "Player 1 has won!"
            }else{
                winner.text = "Player 2 has won!"
            }
        }else if placements[1] == placements[4] && placements[4] == placements[7] && placements[1] != 0{
            if(placements[1] == 1){
                winner.text = "Player 1 has won!"
            }else{
                winner.text = "Player 2 has won!"
            }
        }else if placements[2] == placements[5] && placements[5] == placements[8] && placements[2] != 0{
            if(placements[2] == 1){
                winner.text = "Player 1 has won!"
            }else{
                winner.text = "Player 2 has won!"
            }
        } else if placements[0] == placements[4] && placements[4] == placements[8] && placements[0] != 0{
            if(placements[0] == 1){
                winner.text = "Player 1 has won!"
            }else{
                winner.text = "Player 2 has won!"
            }
        }else if placements[2] == placements[4] && placements[4] == placements[6] && placements[2] != 0{
            if(placements[2] == 1){
                winner.text = "Player 1 has won!"
            }else{
                winner.text = "Player 2 has won!"
            }
        }else {
            if boardisFull() == true{
                winner.text = "It's a tie"
            }
        }
        
    }
    
    func boardisFull() -> Bool{
        for x in 0...8{
            if placements[x] == 0{
                return false
            }
        }
        return true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func resetboard(sender: UIButton) {
        placements = [0,0,0,0,0,0,0,0,0]
        turn = 1
        winner.text = ""
    
        for x in 1...9{
            let button = view.viewWithTag(x) as! UIButton
            button.setImage(nil, forState: UIControlState.Normal)
        }
    }

}


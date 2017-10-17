//
//  ViewController.swift
//  project_1
//
//  Created by Mason Fibkins on 10/1/17.
//

import UIKit
import AVFoundation //import for audio

class ViewController: UIViewController {
    
    //MARK: Properties
    
    var activePlayer = 1 //cross (who's turn it is)
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] //start blank game, and won't let you change the piece once placed
    
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]] //ways to win
    var gameIsActive = true //pauses game
    
    var audioPlayer = AVAudioPlayer() //sound variable
    
    @IBOutlet weak var label: UILabel! //label
    
    @IBAction func action(_ sender: Any) { //action for all boxes, gave each button a tag 1,2,4...
        
        if (gameState[(sender as AnyObject).tag-1] == 0 && gameIsActive == true){ //-1 becasue tags start at 1. only place one piece at one place. also cleared images from butons so they don't display until they're clicked on. true lets user keep playing
            
            gameState[(sender as AnyObject).tag-1] = activePlayer  //cant't override pieces
            
            if (activePlayer == 1 ){ //check who's turn it is/ who the active player is. game will display either cross or nought
                (sender as AnyObject).setImage(UIImage(named: "xx.png"), for: UIControlState())
                activePlayer = 2 //changes to opposite piece
            } else{
                (sender as AnyObject).setImage(UIImage(named: "oo.png"), for: UIControlState())
                activePlayer = 1 //changes to opposite peiece
            }
        }
        for combination in winningCombinations{ //check for winner or tie
            if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] //loops through all combinations
            {
                gameIsActive = false //stops game if someone wins or tie
                
                if gameState[combination[0]] == 1 //checks for winner and prints who won in the label
                {
                    //x won
                    label.text = "X Wins!"
                }
                else
                {
                    //o won
                    label.text = "O Wins!"
                }
                
                playAgainButton.isHidden = false //shows button
                label.isHidden = false //shows label
        }
      }
        gameIsActive = false
        
        for  i in gameState{ //checks for tie
            if i == 0{ //if there are no spots left and no one has one then there is a tie
                gameIsActive = true
                break //breaks loop becasue there is an empty spot
            }
        }
        if gameIsActive == false{ //checks for tie
            label.text = "Tie"
            label.isHidden = false //shows label
            playAgainButton.isHidden = false //shows play again button when game is over
        }
    }
    @IBOutlet weak var playAgainButton: UIButton!
    @IBAction func playAgain(_ sender: Any) { //allows user to play again. button only shows once game is over.
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] //starts blank game
        gameIsActive = true
        activePlayer = 1
        playAgainButton.isHidden = true //hides play again button until game is over
        label.isHidden = true //hides label
        
        for i in 1...9{ //resets all buttons by going through all element tags (on the buttons)
            let button = view.viewWithTag(i) as! UIButton
            button.setImage(nil, for: UIControlState()) //nil removes all images (resets game)
        }
    }
    
    //Sound Buttons
    
    @IBAction func On(_ sender: Any) { //on button plays music
        audioPlayer.numberOfLoops = -1 //loops song
        audioPlayer.play()
    }
    
    @IBAction func Off(_ sender: Any) { //off button stops music
        if audioPlayer.isPlaying {
            audioPlayer.pause() //song will resume from where it left off
        } else{
            
        }
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        do{
        
            audioPlayer =  try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sample", ofType: "mp3")!)) //plays music in background of app
                audioPlayer.prepareToPlay()
        } catch{
            print(error) //if there is an error it will print it
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


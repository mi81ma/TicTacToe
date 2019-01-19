//
//  ViewController.swift
//  TicTacToe
//
//  Created by masato on 18/1/2019.
//  Copyright © 2019 masato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    var turnCount = 0
    var activeGame = true

    // 1 is Orval, 2 is Cross
    var activePlayer = 1

    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]   // 0 - Empty, 1 - Orval, 2 -Cross

    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]


    var imageArray : [UIImage] = [#imageLiteral(resourceName: "Nothing"),#imageLiteral(resourceName: "Oval"),#imageLiteral(resourceName: "X")]

    var imageView = UIImageView()

    var button01 = UIButton()
    var button02 = UIButton()
    var button03 = UIButton()
    var button04 = UIButton()
    var button05 = UIButton()
    var button06 = UIButton()
    var button07 = UIButton()
    var button08 = UIButton()
    var button09 = UIButton()

    var winnerMessage = UILabel()
    var playAgainButton = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()


        imageView = UIImageView(frame: CGRect(x: 0, y: (self.view.frame.height - self.view.frame.width) / 2, width: self.view.frame.width, height: self.view.frame.width))

//        imageView.backgroundColor = .red
        let image = UIImage(named: "board.png")
        imageView.image = image

        view.addSubview(imageView)



        button01.frame = CGRect(x: 0, y:  (self.view.frame.height - self.view.frame.width) / 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3)
//        button01.setImage(imageArray[1], for: .normal)
        button01.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button01.tag = 1
        view.addSubview(button01)

        button02 = UIButton(frame: CGRect(x: imageView.bounds.width / 3, y:  (self.view.frame.height - self.view.frame.width) / 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
//        button02.setImage(imageArray[1], for: .normal)
        button02.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button02.tag = 2
        view.addSubview(button02)

        button03 = UIButton(frame: CGRect(x: imageView.bounds.width / 3 * 2, y:  (self.view.frame.height - self.view.frame.width) / 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
//        button03.setImage(imageArray[1], for: .normal)
        button03.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button03.tag = 3
        view.addSubview(button03)


        button04 = UIButton(frame: CGRect(x: 0, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
//        button04.setImage(imageArray[1], for: .normal)
        button04.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button04.tag = 4
        view.addSubview(button04)

        button05 = UIButton(frame: CGRect(x: imageView.bounds.width / 3, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3 , width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
//        button05.setImage(imageArray[1], for: .normal)
        button05.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button05.tag = 5
        view.addSubview(button05)

        button06 = UIButton(frame: CGRect(x: imageView.bounds.width / 3 * 2, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
//        button06.setImage(imageArray[1], for: .normal)
        button06.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button06.tag = 6
        view.addSubview(button06)


        button07 = UIButton(frame: CGRect(x: 0, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3 * 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
//        button07.setImage(imageArray[1], for: .normal)
        button07.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button07.tag = 7
        view.addSubview(button07)

        button08 = UIButton(frame: CGRect(x: imageView.bounds.width / 3, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3 * 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
//        button08.setImage(imageArray[1], for: .normal)
        button08.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button08.tag = 8
        view.addSubview(button08)

        button09 = UIButton(frame: CGRect(x: imageView.bounds.width / 3 * 2, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3 * 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
//        button09.setImage(imageArray[1], for: .normal)
        button09.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button09.tag = 9
        view.addSubview(button09)




        // Winner Message

        winnerMessage.isHidden = true
        winnerMessage.frame = CGRect(x: imageView.bounds.width / 6, y: self.view.frame.height / 2, width: imageView.bounds.width / 3 * 2, height: 100)
        winnerMessage.textAlignment = .center
        winnerMessage.center = CGPoint(x: winnerMessage.center.x - 500, y: winnerMessage.center.y - 100)
        winnerMessage.textColor = UIColor.green
        winnerMessage.font = winnerMessage.font.withSize(30)

        view.addSubview(winnerMessage)


        playAgainButton.isHidden = true
        playAgainButton.frame = CGRect(x: imageView.bounds.width / 6, y: self.view.frame.height / 2, width: imageView.bounds.width / 3 * 2, height: 50)
        playAgainButton.center = CGPoint(x: playAgainButton.center.x - 500, y: playAgainButton.center.y)
        playAgainButton.setTitle("Play Again", for: [])
        playAgainButton.addTarget(self, action: #selector(ViewController.onClickRepeatButton), for: .touchUpInside)

        playAgainButton.backgroundColor = .red
        playAgainButton.layer.cornerRadius = 10
        winnerMessage.text = ""
        playAgainButton.titleLabel?.font.withSize(60)
        view.addSubview(playAgainButton)

    }




    /*
     Button Action
     */
    @objc func onClickMyButton(sender: UIButton) {

        turnCount += 1

        let activePosition = sender.tag - 1

        print("onClickMyButton:")
        print("sender.tag \(sender.tag)")


        if gameState[activePosition] == 0 {

            gameState[activePosition] = activePlayer

            if activePlayer == 1 {
                sender.setImage(imageArray[1], for: [])
                activePlayer = 2
            } else {
                sender.setImage(imageArray[2], for: [])
                activePlayer = 1

            }


            // Win Judgement
            for combination in winningCombinations {

                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {

                    // We have a winner!
                    activeGame = false

                    winnerMessage.isHidden = false
                    playAgainButton.isHidden = false

                    if gameState[combination[0]] == 1 {
                        winnerMessage.text = "Noughts has won!"

                    } else {
                        winnerMessage.text = "Crosses has won!"
                    }

                    UIView.animate(withDuration: 1) {
                        self.winnerMessage.center = CGPoint(x: self.winnerMessage.center.x + 500, y: self.winnerMessage.center.y)
                        self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                    }

                }
            }

            // Draw Judgement
            if gameState.contains(0) == false {

                print(gameState)

                activeGame = false
                winnerMessage.isHidden = false
                playAgainButton.isHidden = false

                winnerMessage.text = "This Game is Draw"

                UIView.animate(withDuration: 1) {
                    self.winnerMessage.center = CGPoint(x: self.winnerMessage.center.x + 500, y: self.winnerMessage.center.y)
                    self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                }

            }

        }
    }


    @objc func onClickRepeatButton(sender: UIButton) {
        print("Press Play again Button")

        activeGame = true
        activePlayer = 1
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]



        for i in 1..<10 {
            if let button = view.viewWithTag(i) as? UIButton {
                button.setImage(nil, for: [])
            }
             }



            self.winnerMessage.center = CGPoint(x: self.winnerMessage.center.x - 500, y: self.winnerMessage.center.y)
            self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x - 500, y: self.playAgainButton.center.y)

            winnerMessage.isHidden = true
            playAgainButton.isHidden = true


    }

}



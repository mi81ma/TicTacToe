//
//  ViewController.swift
//  TicTacToe
//
//  Created by masato on 18/1/2019.
//  Copyright © 2019 masato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


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


    override func viewDidLoad() {
        super.viewDidLoad()


        imageView = UIImageView(frame: CGRect(x: 0, y: (self.view.frame.height - self.view.frame.width) / 2, width: self.view.frame.width, height: self.view.frame.width))

//        imageView.backgroundColor = .red
        let image = UIImage(named: "board.png")
        imageView.image = image

        view.addSubview(imageView)



        button01.frame = CGRect(x: 0, y:  (self.view.frame.height - self.view.frame.width) / 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3)
        button01.setImage(imageArray[1], for: .normal)
        button01.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button01.tag = 1
        view.addSubview(button01)

        button02 = UIButton(frame: CGRect(x: imageView.bounds.width / 3, y:  (self.view.frame.height - self.view.frame.width) / 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
        button02.setImage(imageArray[1], for: .normal)
        button02.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button02.tag = 2
        view.addSubview(button02)

        button03 = UIButton(frame: CGRect(x: imageView.bounds.width / 3 * 2, y:  (self.view.frame.height - self.view.frame.width) / 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
        button03.setImage(imageArray[1], for: .normal)
        button03.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button03.tag = 3
        view.addSubview(button03)


        button04 = UIButton(frame: CGRect(x: 0, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
        button04.setImage(imageArray[1], for: .normal)
        button04.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button04.tag = 4
        view.addSubview(button04)

        button05 = UIButton(frame: CGRect(x: imageView.bounds.width / 3, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3 , width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
        button05.setImage(imageArray[1], for: .normal)
        button05.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button05.tag = 5
        view.addSubview(button05)

        button06 = UIButton(frame: CGRect(x: imageView.bounds.width / 3 * 2, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
        button06.setImage(imageArray[1], for: .normal)
        button06.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button06.tag = 6
        view.addSubview(button06)


        button07 = UIButton(frame: CGRect(x: 0, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3 * 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
        button07.setImage(imageArray[1], for: .normal)
        button07.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button07.tag = 7
        view.addSubview(button07)

        button08 = UIButton(frame: CGRect(x: imageView.bounds.width / 3, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3 * 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
        button08.setImage(imageArray[1], for: .normal)
        button08.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button08.tag = 8
        view.addSubview(button08)

        button09 = UIButton(frame: CGRect(x: imageView.bounds.width / 3 * 2, y: (self.view.frame.height - self.view.frame.width) / 2 + imageView.bounds.width / 3 * 2, width: imageView.bounds.width / 3, height: imageView.bounds.height / 3))
        button09.setImage(imageArray[1], for: .normal)
        button09.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
        button09.tag = 9
        view.addSubview(button09)


    }


    /*
     ボタンのイベント.
     */
    @objc func onClickMyButton(sender: UIButton) {
        print("onClickMyButton:")
        print("sender.tag \(sender.tag)")

    }

}



//
//import UIKit
//
//class ViewController: UIViewController {
//
//    private var myButton: UIButton!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Buttonを生成する.
//        myButton = UIButton()
//
//        // ボタンのサイズ.
//        let bWidth: CGFloat = 200
//        let bHeight: CGFloat = 50
//
//        // ボタンのX,Y座標.
//        let posX: CGFloat = self.view.frame.width/2 - bWidth/2
//        let posY: CGFloat = self.view.frame.height/2 - bHeight/2
//
//        // ボタンの設置座標とサイズを設定する.
//        myButton.frame = CGRect(x: posX, y: posY, width: bWidth, height: bHeight)
//
//        // ボタンの背景色を設定.
//        myButton.backgroundColor = UIColor.red
//
//        // ボタンの枠を丸くする.
//        myButton.layer.masksToBounds = true
//
//        // コーナーの半径を設定する.
//        myButton.layer.cornerRadius = 20.0
//
//        // タイトルを設定する(通常時).
//        myButton.setTitle("ボタン(通常)", for: .normal)
//        myButton.setTitleColor(UIColor.white, for: .normal)
//
//        // タイトルを設定する(ボタンがハイライトされた時).
//        myButton.setTitle("ボタン(押された時)", for: .highlighted)
//        myButton.setTitleColor(UIColor.black, for: .highlighted)
//
//        myButton.setTitleColor(UIColor.green, for: .highlighted)
//
//        // ボタンにタグをつける.
//        myButton.tag = 1
//
//        // イベントを追加する
//        myButton.addTarget(self, action: #selector(ViewController.onClickMyButton(sender:)), for: .touchUpInside)
//
//        // ボタンをViewに追加.
//        self.view.addSubview(myButton)
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//    /*
//     ボタンのイベント.
//     */
//    @objc internal func onClickMyButton(sender: UIButton) {
//        print("onClickMyButton:");
//        print("sender.currentTitle: \(sender.currentTitle)")
//        print("sender.tag: \(sender.tag)")
//    }
//
//}

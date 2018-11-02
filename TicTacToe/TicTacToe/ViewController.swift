//
//  ViewController.swift
//  TicTacToe
//
//  Created by Ramilia Imankulova on 11/1/18.
//  Copyright © 2018 Ramilia Imankulova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var player = 1
    var cells = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    @IBAction func btnPressed(_ sender: AnyObject) {
        let takenCells = sender.tag - 1
        if cells[takenCells] == 0 {
            cells[takenCells] = player
        if player == 1 {
            sender.setImage(UIImage(named: "nought.png"), for: [])
            player = 2
        } else {
            sender.setImage(UIImage(named: "cross.png"), for: [])
            player = 1
        }
        }
    }
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}


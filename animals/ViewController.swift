//
//  ViewController.swift
//  animals
//
//  Created by Misha Dovhiy on 19.11.2019.
//  Copyright © 2019 Misha Dovhiy. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var player: AVAudioPlayer!
    
    func playSound(name: String) {
        
        var url = Bundle.main.url(forResource: name, withExtension: "mp3")
        
        if url == nil {
            url = Bundle.main.url(forResource: "Error", withExtension: "mp3")
        }
        
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
        
    }

    @IBAction func click(_ sender: UIButton) {
        
        playSound(name: sender.currentTitle!)
        
    }
    
}

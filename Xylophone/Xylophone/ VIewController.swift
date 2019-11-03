//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate{
    
    let soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
    var audioPlayer: AVAudioPlayer!
    
//    var pianoSound = NSURL(fileURLWithPath: Bundle.main.path(forResource: "note1", ofType: "wav")!)
//    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton) {
        
        // method 1
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: pianoSound as URL)
//            audioPlayer.play()
//        } catch {
//            // couldn't load file :(
//        }

        soundPlaying(selectedSoundFile: soundArray[sender.tag - 1])
    
    }
    
    func soundPlaying(selectedSoundFile: String) {
        let soundURL = Bundle.main.url(forResource: selectedSoundFile, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        audioPlayer.play()
        print("you suck \(selectedSoundFile)")
    }
}


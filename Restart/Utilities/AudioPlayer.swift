//
//  AudioPlayer.swift
//  Restart
//
//  Created by Gurleen Kaur on 2023-04-18.
//

import Foundation
import AVFoundation

var audioPlayer: AVAudioPlayer?

func playSound(sound: String, type: String){
    if let path =  Bundle.main.path(forResource: sound, ofType: type){
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path))
            audioPlayer?.play()
            
        }
        catch{
            print("Cannot play audio file")
        }
    }
}

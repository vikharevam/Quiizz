//
//  MediaController.swift
//  Quiizz
//
//  Created by Александр Вихарев on 13.04.2023.
//


import Foundation
import AVFoundation

var player: AVAudioPlayer?


let soundRight = "apple-pay-succes"
let soundWrong = "block_sound"

func playSound(nameSound: String?) {
    guard let path = Bundle.main.path(forResource: nameSound, ofType:"mp3") else {
        return }
    let url = URL(fileURLWithPath: path)

    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
        
    } catch let error {
        print(error.localizedDescription)
   }
    
}

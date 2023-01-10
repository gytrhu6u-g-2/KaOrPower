//
//  SoundPlay.swift
//  KaOrPower
//
//  Created by Koki on 2022/11/03.
//

import UIKit
import AVFoundation

class SoundPlay: NSObject {
    
    let clickData = NSDataAsset(name: "click")!.data
    var clickPlayer: AVAudioPlayer!
    
    let correctData = NSDataAsset(name: "correct")!.data
    var correctPlayer: AVAudioPlayer!
    
    let incorrectData = NSDataAsset(name: "incorrect")!.data
    var incorrectPlayer: AVAudioPlayer!
    
    let mainSoundData = NSDataAsset(name: "mainSound")!.data
    var mainSoundPlayer: AVAudioPlayer?
    

    func clickPlay(){
        do{
            clickPlayer = try AVAudioPlayer(data: clickData)
                    
                    clickPlayer.play()
        }catch{
            print("クリックでエラー発生")
        }
    }
    
    func correctPlay(){
        do{
            correctPlayer = try AVAudioPlayer(data: correctData)
                    
                    correctPlayer.play()
        }catch{
            print("正解でエラー発生")
        }
    }
    
    func incorrectPlay(){
        do{
            incorrectPlayer = try AVAudioPlayer(data: incorrectData)
                    
                    incorrectPlayer.play()
        }catch{
            print("不正解でエラー発生")
        }
    }
    
    func mainSoundPlay(){
        do{
            mainSoundPlayer = try AVAudioPlayer(data: mainSoundData)
                    
            mainSoundPlayer?.play()
            mainSoundPlayer?.numberOfLoops = -1
            mainSoundPlayer?.prepareToPlay()
            mainSoundPlayer?.volume = 0.2
        }catch{
            print("BGMでエラー発生")
        }
    }
}

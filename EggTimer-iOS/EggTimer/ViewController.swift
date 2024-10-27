

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var message: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    

    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    var totalTime = 0
    var secondsPassed = 0
    
    // Henter inn Timer, med timer-variabel
    var timer = Timer()
    var player: AVAudioPlayer!
    // Lydfil
    let dingSound = Bundle.main.path(forResource: "alarm_sound", ofType: "mp3")
    
    func playSound(){
        var filePath: String?
        filePath = Bundle.main.path(forResource: "alarm_sound", ofType: "mp3")
        let fileURL = URL(fileURLWithPath: filePath!)
        var soundID:SystemSoundID = 0
        AudioServicesCreateSystemSoundID(fileURL as CFURL, &soundID)
        AudioServicesPlaySystemSound(soundID)
    }
    
    @IBAction func hardnessSelected(_ sender: UIButton) {

        // invalidate stopper timeren
        timer.invalidate()
        let hardness = sender.currentTitle! //Soft, Medium, Hard
        totalTime = eggTimes[hardness]!
        
        progressBar.progress = 0.0
        secondsPassed = 0
        message.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            
            
        } else {
            timer.invalidate()
            message.text = "Done!"
            let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
            player = try! AVAudioPlayer(contentsOf: url!)
            player.play()
            
        }
        
        
    }
    
    
}

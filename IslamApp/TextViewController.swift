//
//  TextViewController.swift
//  IslamApp
//
//

import UIKit
import XLPagerTabStrip
import AVFoundation

class TextViewController: UIViewController, IndicatorInfoProvider {
    
    weak var delegate: AudioPlayersProtocol?
    var playBtnDelegate: PlayBtnDelegate?
    var text = ""
    var bottomText: String?
    var image: UIImage?
    var tabTitle = ""
    var arabText: String?
    var audioName: String?
    var audioPlayer: AVAudioPlayer?
    var playBtnCount: Int = 0
    
    
    @IBOutlet weak var arabTextLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var bottomTextLabel: UILabel!
    
    @IBOutlet weak var audioPlayerStackViewHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var imageViewHeightConstraint: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textLabel.text = text
        
        imageView.image = image
        arabTextLabel.text = arabText
        bottomTextLabel.text = bottomText
        if tabTitle == "BØNTIDSTABEL" {
            imageViewHeightConstraint.constant = image == nil ? 0 : CGFloat(image?.cgImage?.height ?? 200)
        } else {
            imageViewHeightConstraint.constant = image == nil ? 0 : 200
        }
        audioPlayerStackViewHeightConstraint.constant = audioName == nil ? 0 : 38
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func indicatorInfo(for pagerTabStripController: PagerTabStripViewController) -> IndicatorInfo {
        return IndicatorInfo(title: tabTitle)
    }
    
    @IBAction func playTapped(_ sender: UIButton) {
        
        playBtnCount+=1;
        self.playSound()
    }
    
    @IBAction func pauseTapped(_ sender: UIButton) {
        stopSound()
    }
    
    @IBAction func replayTapped(_ sender: UIButton) {
        stopSound()
        self.playSound()
    }
    
    func playSound() {
        let sound = URL(fileURLWithPath: Bundle.main.path(forResource: audioName, ofType: "m4a")!)
        
        print(playBtnCount);
        playBtnCount = self.playBtnDelegate?.resetCounter() as! Int
        print(playBtnCount);
        
        if playBtnCount < 2 {
            
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: sound)
            self.delegate?.audioPlayers.append(audioPlayer)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
            self.playBtnDelegate?.changeAudioFlag(canPlay: false)
            
        }catch {
            print("Error getting the audio file")
            }
        }
        
    }
    
    func stopSound() {
        playBtnCount = 0
        audioPlayer?.stop()
    }
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

    


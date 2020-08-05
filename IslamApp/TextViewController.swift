//
//  TextViewController.swift
//  IslamApp
//
//  Created by Uros Zivaljevic on 7/6/17.
//

import UIKit
import XLPagerTabStrip
import AVFoundation

class TextViewController: UIViewController, IndicatorInfoProvider {

    var text = ""
    var bottomText: String?
    var image: UIImage?
    var tabTitle = ""
    var arabText: String?
    var audioName: String?
    var audioPlayer: AVAudioPlayer?
    
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
        self.playSound()
    }
    
    @IBAction func pauseTapped(_ sender: UIButton) {
        audioPlayer?.stop()
    }
    
    @IBAction func replayTapped(_ sender: UIButton) {
        self.playSound()
    }
    
    func playSound() {
        let sound = URL(fileURLWithPath: Bundle.main.path(forResource: audioName, ofType: "m4a")!)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: sound)
            audioPlayer?.prepareToPlay()
            audioPlayer?.play()
        }catch {
            print("Error getting the audio file")
        }
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

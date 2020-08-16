//
//  PagerTabsViewController.swift
//  IslamApp
//
//

import UIKit
import XLPagerTabStrip
import AVFoundation

protocol AudioPlayersProtocol: class {
    var audioPlayers: [AVAudioPlayer?] { get set }
}

protocol PlayBtnDelegate {
    func resetCounter() -> Int
    func changeAudioFlag(canPlay: Bool)
}

class PagerTabsViewController: ButtonBarPagerTabStripViewController, AudioPlayersProtocol, PlayBtnDelegate {
   
    func changeAudioFlag(canPlay: Bool) {
        canPlayAudio = canPlay
    }
    
    
    func resetCounter() -> Int {
        if canPlayAudio == true {
            return 0
        } else {
            return 2
        }
    }
    
    var canPlayAudio = false;
    var audioPlayers: [AVAudioPlayer?] = []
    var tabItemData = [TabItemData]()
            
    override func viewDidLoad() {
        self.settings.style.buttonBarItemTitleColor = .black
        self.settings.style.buttonBarBackgroundColor = .white
        self.settings.style.buttonBarItemBackgroundColor = .white
        self.settings.style.selectedBarBackgroundColor = UIColor(red: 0.459, green: 0.227, blue: 0.063, alpha: 1.00)
        self.settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 12)
        
        super.viewDidLoad()
               
        changeCurrentIndexProgressive = { [weak self] (_, _, _, _, _) -> Void in
            self?.changeAudioFlag(canPlay: true);
            self?.audioPlayers.forEach({
                $0?.stop()
            })
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        var tabViewControllers = [UIViewController]()
        
        for tabItem in tabItemData {
            let textVC = self.storyboard!.instantiateViewController(withIdentifier: "TextViewController") as! TextViewController
            
            textVC.delegate = self;
            textVC.playBtnDelegate = self;
            textVC.tabTitle = tabItem.title
            textVC.text = tabItem.text
            textVC.image = tabItem.image
            textVC.arabText = tabItem.arabText
            textVC.bottomText = tabItem.bottomText
            textVC.audioName = tabItem.audioName
            
            tabViewControllers.append(textVC)
            
        }
        
        
        return tabViewControllers
    }
    
}


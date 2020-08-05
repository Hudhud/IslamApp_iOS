//
//  PagerTabsViewController.swift
//  IslamApp
//
//  Created by Uros Zivaljevic on 7/6/17.
//  Copyright © 2017 Uros Zivaljevic. All rights reserved.
//

import UIKit
import XLPagerTabStrip

class PagerTabsViewController: ButtonBarPagerTabStripViewController {

    var tabItemData = [TabItemData]()
    
    override func viewDidLoad() {
        self.settings.style.buttonBarItemTitleColor = .black
        self.settings.style.buttonBarBackgroundColor = .white
        self.settings.style.buttonBarItemBackgroundColor = .white
        self.settings.style.selectedBarBackgroundColor = UIColor(red: 0.459, green: 0.227, blue: 0.063, alpha: 1.00)
        self.settings.style.buttonBarItemFont = UIFont.systemFont(ofSize: 12)
        super.viewDidLoad()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewControllers(for pagerTabStripController: PagerTabStripViewController) -> [UIViewController] {
        
        var tabViewControllers = [UIViewController]()
        
        for tabItem in tabItemData {
            
            let textVC = self.storyboard!.instantiateViewController(withIdentifier: "TextViewController") as! TextViewController
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


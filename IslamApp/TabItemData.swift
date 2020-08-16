//
//  TabItemData.swift
//  IslamApp
//
//

import UIKit

struct TabItemData {
    
    var title: String
    var text: String
    var image: UIImage?
    var arabText: String?
    var bottomText: String?
    var audioName: String?
    
    var audioFileUrl: String {
        return Bundle.main.path(forResource: self.audioName, ofType: "mp3")!
    }
    
    init(title: String, text: String, image: UIImage? = nil, audioName: String? = nil) {
        self.title = title.uppercased()
        self.text = text
        self.image = image
        self.audioName = audioName
    }
    
}

//
//  ContactViewController.swift
//  IslamApp
//
//  Created by Uros Zivaljevic on 7/8/17.
//  Copyright © 2017 Uros Zivaljevic. All rights reserved.
//

import UIKit

class ContactViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendTapped(_ sender: UIButton) {
        
        let email = "Appfeedback@hotmail.com"
        let mailText = textView.text.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? ""
        if let url = URL(string: "mailto:\(email)?subject=Feedback/Spørgsmal&body=\(mailText)") {
            UIApplication.shared.open(url, options: [:], completionHandler: nil)   
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

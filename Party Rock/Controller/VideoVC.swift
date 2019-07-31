//
//  VideoVC.swift
//  Party Rock
//
//  Created by Vuk Knežević on 1/16/19.
//  Copyright © 2019 Teodora Knežević. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _partyRock:PartyRock!
    
    var partyRock:PartyRock{
        get{
            return _partyRock
        }
        set{
            _partyRock = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = partyRock.videoTitle  // ZASTO NIJE STAVLJENO _partyRock ???
        
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  VideoVC.swift
//  Party App
//
//  Created by Vasil Nechev on 10/14/16.
//  Copyright © 2016 Vasil Nechev. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleLbl: UILabel!
    
    private var _partyRock: PartyRock!
    
    var partyRock: PartyRock {
        get {
            return _partyRock
        }set {
            _partyRock = newValue
        }
    }
   
    
       override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl.text = partyRock.titleUTL
        webView.loadHTMLString(partyRock.videoURL, baseURL: nil)
        // Do any additional setup after loading the view.
        let tap = UITapGestureRecognizer(target: self, action: #selector(VideoVC.closeToMainVC))
        view.addGestureRecognizer(tap)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func closeToMainVC()  {
        self.dismiss(animated: true, completion: nil)
    }
   
}

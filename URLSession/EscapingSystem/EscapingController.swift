//
//  EscapingController.swift
//  URLSession
//
//  Created by bilal on 26/12/2021.
//

import UIKit

class EscapingController: UIViewController {

    @IBOutlet weak var prImage: UIImageView!
    @IBOutlet weak var prBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func btnDownload(_ sender: Any) {
        prBtn.isEnabled = false
        
        Downloader().getImage { image, Error in
            self.prImage.image = image
            print(Error ?? "")
        }
    }
    
    
}

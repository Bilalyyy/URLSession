//
//  OptionalCompletionController.swift
//  URLSession
//
//  Created by bilal on 26/12/2021.
//

import UIKit

class OptionalCompletionController: UIViewController {

    @IBOutlet weak var prImage: UIImageView!
    @IBOutlet weak var prBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func btnDownload(_ sender: Any) {
        prBtn.isEnabled = false
        
        OptionalCompletionDownloader().getImage { image, error in
            self.prImage.image = image
            print(error ?? "")
        }
    }
    
}

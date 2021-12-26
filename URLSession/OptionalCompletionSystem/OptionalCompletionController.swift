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
        OptionalCompletionDownloader().getImage { image, error in
            if error == nil {
                self.prBtn.isEnabled = false
                self.prImage.image = image
            } else {
                print(error ?? "")
            }
        }
    }
    
}

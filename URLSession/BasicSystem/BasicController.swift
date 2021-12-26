//
//  ViewController.swift
//  URLSession
//
//  Created by bilal on 26/12/2021.
//

import UIKit

class BasicController: UIViewController {

    
    @IBOutlet weak var prImage: UIImageView!
    @IBOutlet weak var prBtn: UIButton!
    
    let urlStr = "https://images.pexels.com/photos/2233416/pexels-photo-2233416.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnDownload(_ sender: Any) {
        prBtn.isEnabled = false
        
        guard let url = URL(string: urlStr) else {return}
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let sData = data {
                    let image = UIImage(data: sData)
                    self.prImage.image = image
                }
                if let sError = error {
                    print("error: \(sError)")
                }
            }
        }.resume()
    }
    
}


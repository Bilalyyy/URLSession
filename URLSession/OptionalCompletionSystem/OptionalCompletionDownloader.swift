//
//  OptionalCompletionDownloader.swift
//  URLSession
//
//  Created by bilal on 26/12/2021.
//

import UIKit

class OptionalCompletionDownloader {
    
    let urlStr = "https://images.pexels.com/photos/6118470/pexels-photo-6118470.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
    
    typealias completion = ((UIImage?, String?) -> Void)?

    func getImage(completion: completion) {
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                DispatchQueue.main.async {
                    if let sData = data {
                        let image = UIImage(data: sData)
                        completion?(image, nil)
                    } else {
                        if let sError = error {
                            completion?(nil, sError.localizedDescription)
                        } else {
                            completion?(nil, "aucune erreur renvoyé")
                        }
                    }
                }
            }.resume()
            
        } else {
            completion?(nil, "Impossible de telecharger l'image")
        }
    }
        
    
}

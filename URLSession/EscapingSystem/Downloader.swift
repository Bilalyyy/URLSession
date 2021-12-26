//
//  Downloader.swift
//  URLSession
//
//  Created by bilal on 26/12/2021.
//

import UIKit

class Downloader {
    
    let urlStr = "https://images.pexels.com/photos/4365100/pexels-photo-4365100.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940"

    typealias completion = ((UIImage?, String?) -> Void)
    
    func getImage(completion: @escaping completion) {
        if let url = URL(string: urlStr) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                DispatchQueue.main.async {
                    if let sData = data {
                        let image = UIImage(data: sData)
                        completion(image, nil)
                    } else {
                        if let sError = error {
                            completion(nil, sError.localizedDescription)
                        } else {
                            completion(nil, "aucune erreur renvoyé")
                        }
                    }
                }
            }.resume()
            
        } else {
            completion(nil, "Impossible de telecharger l'image")
        }
    }
        
    
}

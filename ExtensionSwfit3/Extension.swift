//
//  Extension.swift
//  ExtensionSwfit3
//
//  Created by Jakkawad Chaiplee on 7/1/2560 BE.
//  Copyright © 2560 Jakkawad Chaiplee. All rights reserved.
//

import UIKit

extension UIImageView {
    
    //download image from sever
    //imageView.imageFromServerURL(urlString: "https://static.pexels.com/photos/126407/pexels-photo-126407.jpeg")
    public func imageFromServerURL(urlString: String) {
        
        URLSession.shared.dataTask(with: NSURL(string: urlString)! as URL, completionHandler: { (data, response, error) -> Void in
            
            if error != nil {
                print(error!)
                return
            }
            DispatchQueue.main.async(execute: { () -> Void in
                let image = UIImage(data: data!)
                self.image = image
            })
            
        }).resume()
    }}

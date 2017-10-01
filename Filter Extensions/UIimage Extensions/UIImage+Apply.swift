//
//  UIImage+Apply.swift
//  Filter Extensions
//
//  Created by Eoin Norris on 01/10/2017.
//  Copyright © 2017 Occasionally Useful Software. All rights reserved.
//

import Foundation

extension UIImage{
    
    func apply(filter:CIFilter)->UIImage?{
        
        var result:UIImage? = nil
        
        if let ciImage = filter.outputImage{
            result = UIImage(ciImage: ciImage)
        }
        
        return result
        
    }
}

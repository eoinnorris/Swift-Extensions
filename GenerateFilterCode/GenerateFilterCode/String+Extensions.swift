//
//  String.swift
//  GenerateFilterCode
//
//  Created by Eoin Norris on 13/11/2016.
//  Copyright © 2016 Eoin Norris. All rights reserved.
//

import Foundation

extension String {
    
    func lowerCasedFirstCharacter()->String{
        var result = self;
        let firstCharIndex = result.index(result.startIndex, offsetBy: 1)
        let firstCharStr = result.substring(to:firstCharIndex).lowercased()
        result = result.substring(from: firstCharIndex)
        result = firstCharStr + result
        return result
    }
    
    
    /// writes the generated code to disk
    ///
    /// - parameter output:     the string to write to disk
    /// - parameter filterName: the name of the filter, so create a unique swift code name
    ///
    /// - returns: true for success, false otherwise
    func writeToTempFolder(fileName:String)->URL?{
        let fullName = fileName + ".swift"
        
        guard let tempFileURL = NSURL(fileURLWithPath: NSTemporaryDirectory()).appendingPathComponent(fullName) else {
            return nil
        }
        
        let dirURL = tempFileURL.deletingLastPathComponent()
        
        do {
            try FileManager.default.createDirectory(at: dirURL, withIntermediateDirectories: true, attributes: nil)
        } catch {
            return nil
        }
        
        do {
            try self.write(to: tempFileURL, atomically: true, encoding: String.Encoding.utf8)
        } catch {
            return nil
        }
        
        return tempFileURL
        
    }
    
    
}

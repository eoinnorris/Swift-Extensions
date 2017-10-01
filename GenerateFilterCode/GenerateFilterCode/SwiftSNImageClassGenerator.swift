//
//  SwiftSNImageClassGenerator.swift
//  GenerateFilterCode
//
//  Created by Eoin Norris on 13/11/2016.
//  Copyright © 2016 Eoin Norris. All rights reserved.
//

import Cocoa

class SwiftClassImageGenerator:SwiftClassFilterGenerator{
    let uiImageClassTemplate:String = "import Foundation\n\nextension UIImage";
    
    /*
     func createFilterExtensionClass(filter:Filter)->String{
     var result = ciFilterClassTemplate
     result += addBraces()
     result += addNewLineAndIndentation()
     result += generateFunctionName(filter: filter)
     result += addLocaVariableInstantiation()
     // result += generateCodeToCreateCIImage()
     result += generateFilterCreationCodeFrom(filter: filter)
     result += generateCodeToSetFilterValues(filter:filter)
     result += generateAssignVariableCode()
     result += generateLastLine()
     result += endBraces()
     
     
     return result
     }
     */
    
    
    /*
     func gaussianBlur(inputRadius:Double = 20.0)->NSImage?{
     if let filter = CIFilter.gaussianBlur(){
     return self.apply(filter:filter)
     }
     return self
     }
     */
    
    override func generateFunctionName(filter:Filter)->String{
        
        var result = "func "
        result += filter.camelCaseName()
        result += "("
        for (index,input) in filter.sortedInputs().enumerated(){
            result += input.getParamText()
            if index < (filter.sortedInputs().count-1){
                result += ","
            }
        }
        result += ")->UIImage?"
        result += addBraces()
        return result
    }
    
    func gennerateFilterParamaters(filter:Filter)->String{
        let name = filter.camelCaseName()
        var result = addIndendation()
        result += "if let filter = CIFilter.\(name)"
        result += "("
        for (index,input) in filter.sortedInputs().enumerated(){
            result += input.getCalledParamTextForFilter()
            if index < (filter.sortedInputs().count-1){
                result += ","
            }
        }
        result += ")"
        return result
    }
    
    func generateMainBodyFor(filter:Filter)->String{
        var result = ""
        result += gennerateFilterParamaters(filter:filter)
        result += addBraces()
        result += addIndendation()
        result += "return self.apply(filter:filter)"
        result += endBraces()
        return result
    }
    
    func generateResultCode()->String{
        var result = addNewLineAndIndentation()
        result += "return nil"
        return result
    }
    
    func createImageExtensionClass(filter:Filter)->String{
        var result = uiImageClassTemplate
        result += addBraces()
        result += addNewLineAndIndentation()
        result += generateFunctionName(filter:filter)
        result += generateMainBodyFor(filter:filter)
        result += generateResultCode()
        result += endBraces()
        result += endBraces()
        return result
    }
    
   
    
    /// Create image extension classes from each Filter
    ///
    /// - parameter filters: An array of Filters ( encapsulating data about CIFilter dicts)
    func generateImageExtensionsFrom(filters:[Filter]){
        let fm = NSWorkspace.shared
        var folderURL:URL? = nil;
        
        for filter in filters{
            let classGenStr = createImageExtensionClass(filter: filter)
            let fileName = "UIImage+\(filter.name)"
            if let fileURL = classGenStr.writeToTempFolder(fileName: fileName) {
                if (folderURL == nil){
                    folderURL = fileURL.deletingLastPathComponent()
                }
            }
            
        }
        
        if let folderURLUnwrapped = folderURL{
            fm.open(folderURLUnwrapped)
        }
    }
    
    
    
}

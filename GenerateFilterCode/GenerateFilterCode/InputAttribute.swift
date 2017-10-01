//
//  InputAttribute.swift
//  GenerateFilterCode
//
//  Created by Eoin Norris on 13/11/2016.
//  Copyright © 2016 Eoin Norris. All rights reserved.
//

import Cocoa


enum FilterType:String {
    case nameKey = "CIAttributeFilterDisplayName"
}


/// Parses the inputs to the CIFilter into saner values
struct InputAttribute {
    
    var attributeClass:String
    var attributetype:String
    var attributeDefault:String
    var specialParamText:String?
    
    var isComplicated:Bool
    
    
    let inputType:String
    let attributeClassKey = "CIAttributeClass"
    let attributetypeKey = "CIAttributeType"
    let attributetypeDefault = "CIAttributeDefault"
    
    init(numberAttributes:[String:Any], inputType:String) {
        self.inputType = inputType
        self.attributetype = ""
        self.attributeClass = ""
        self.attributeDefault = ""
        self.isComplicated = false
        
        
        //  Dictionaries with Any are a pain, really an AnyObject
        let valueObjectClass = numberAttributes[self.attributeClassKey]  as AnyObject
        if valueObjectClass is String{
            self.attributeClass = valueObjectClass as! String
        }
        
        let valueObjectType = numberAttributes[self.attributetypeKey]  as AnyObject
        if valueObjectType is String{
            self.attributetype = valueObjectType as! String
        }
        
        let valueObjectDefault = numberAttributes[self.attributetypeDefault]  as AnyObject?
        if valueObjectDefault is String{
            self.attributeDefault = valueObjectDefault as! String
            self.specialParamText = self.inputType + ":String" + " = " + "\"\(self.attributeDefault)\""
        } else if valueObjectDefault is Int{
            let number:Int = valueObjectDefault as! Int
            self.attributeDefault = "\(number)"
        } else if valueObjectDefault is Int{
            let number:Double = valueObjectDefault as! Double
            self.attributeDefault = "\(number)"
        } else if valueObjectDefault is NSAffineTransform{
            self.specialParamText = self.inputType + ":" + self.attributeClass
        } else if valueObjectDefault is CIVector{
            self.specialParamText = self.inputType + ":" +  self.attributeClass
        } else if valueObjectDefault is CIColor{
            self.specialParamText = self.inputType + ":" + self.attributeClass
        }  else if valueObjectDefault is NSData{
            self.specialParamText = self.inputType + ":" + self.attributeClass
        } else if valueObjectDefault != nil{
            if valueObjectDefault != nil{
                self.specialParamText = self.inputType + ":CGColorSpace"
            } else {
                NSLog("how did I get here?")
            }
        }
    }
    
    // CGAffineTransform for // CIAffineClamp // CIAffineTile // CIAffineTransform
    // CIAreaAverage
    
    
    
    func attributeForNumeric(attributeType:String)->String{
        let result = "Double"
        return result
    }
    
    func attributeForImage(attributeType:String)->String{
        return "CIImage"
    }
    func defaultParam()->String{
        var result = ""
        
        if  attributeDefault.characters.count > 0 {
            result += " = \(attributeDefault)"
        }
        
        return result
    }
    
    
    func getCalledParamTextForFilter()->String{
        let result = self.inputType + ":" + self.inputType;
        return result;
    }
    
    /// Create a param to go into the param list of the method
    /// for instance an inputBrightness:Int = 1
    ///
    /// - returns: the param text
    func getParamText()->String{
        if let specialResult = self.specialParamText{
            return specialResult
        } else {
            var result = self.inputType
            result += ":"
            if (attributeClass == "NSNumber"){
                result += attributeForNumeric(attributeType: attributetype)
            } else if (attributeClass == "CIImage"){
                result += attributeForImage(attributeType: attributetype)
            } else {
                
                result += self.attributeClass
            }
            result += defaultParam()
            
            return result
        }
    }
}

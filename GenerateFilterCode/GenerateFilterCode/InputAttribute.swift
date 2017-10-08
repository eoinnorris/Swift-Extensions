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


/*
 Filter: CIZoomBlur
 Parameters: {
 CIAttributeDescription = "Simulates the effect of zooming the camera while capturing the image.";
 CIAttributeFilterCategories =     (
 CICategoryBlur,
 CICategoryVideo,
 CICategoryStillImage,
 CICategoryBuiltIn
 );
 CIAttributeFilterDisplayName = "Zoom Blur";
 CIAttributeFilterName = CIZoomBlur;
 CIAttributeReferenceDocumentation = "http://developer.apple.com/cgi-bin/apple_ref.cgi?apple_ref=//apple_ref/doc/filter/ci/CIZoomBlur";
 inputAmount =     {
 CIAttributeClass = NSNumber;
 CIAttributeDefault = 20;
 CIAttributeDescription = "The zoom-in amount. Larger values result in more zooming in.";
 CIAttributeDisplayName = Amount;
 CIAttributeIdentity = 0;
 CIAttributeMin = 0;
 CIAttributeSliderMax = 200;
 CIAttributeSliderMin = 0;
 CIAttributeType = CIAttributeTypeDistance;
 CIUIParameterSet = CIUISetBasic;
 };
 inputCenter =     {
 CIAttributeClass = CIVector;
 CIAttributeDefault = "[150 150]";
 CIAttributeDescription = "The x and y position to use as the center of the effect.";
 CIAttributeDisplayName = Center;
 CIAttributeType = CIAttributeTypePosition;
 CIUIParameterSet = CIUISetBasic;
 };
 inputImage =     {
 CIAttributeClass = CIImage;
 CIAttributeDescription = "The image to use as an input image. For filters that also use a background image, this is the foreground image.";
 CIAttributeDisplayName = Image;
 CIUIParameterSet = CIUISetBasic;
 };
 outputImage =     {
 CIAttributeClass = CIImage;
 };
 }
 
 */

/// Parses the inputs to the CIFilter into saner values
struct InputAttribute {
    
    var attributeClass:String
    var attributetype:String
    var attributeDefault:String
    var attributeDescription:String
    
    var specialParamText:String?
    
    var isComplicated:Bool
    
    
    let inputType:String
    let attributeClassKey = "CIAttributeClass"
    let attributetypeKey = "CIAttributeType"
    let attributetypeDefault = "CIAttributeDefault"
    let attributeDescriptionKey = "CIAttributeDescription"
    
    
    init(numberAttributes:[String:Any], inputType:String) {
        self.inputType = inputType
        self.attributetype = ""
        self.attributeClass = ""
        self.attributeDescription = ""
        self.attributeDefault = ""
        self.isComplicated = false;
        
        
        //  Dictionaries with Any are a pain, really an AnyObject
        let valueObjectClass = numberAttributes[self.attributeClassKey]  as AnyObject
        if valueObjectClass is String{
            self.attributeClass = valueObjectClass as! String
        }
        
        let valueObjectType = numberAttributes[self.attributetypeKey]  as AnyObject
        if valueObjectType is String{
            self.attributetype = valueObjectType as! String
        }
        
        let valueObjectDescription = numberAttributes[self.attributeDescriptionKey]  as AnyObject
        if valueObjectDescription is String{
            if let valueObjectDescriptionStr = valueObjectDescription as? String{
                self.attributeDescription = valueObjectDescriptionStr
            }
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
    
    
    /// Returns the param description
    ///
    /// - Returns: String
    func getParamDescription()->String{
        return self.inputType + ": " + self.attributeDescription
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

//
//  Filter.swift
//  GenerateFilterCode
//
//  Created by Eoin Norris on 30/10/2016.
//  Copyright © 2016 Eoin Norris. All rights reserved.
//

import AppKit

/// The Filter object
class Filter{
    
    let rawParams:[String:Any]
    var name:String
    var description:String?
    var inputs:[InputAttribute]
    
    init(paramaters:[String:Any],name:String) {
        self.rawParams = paramaters
        self.name = name
        self.inputs = [InputAttribute]()
        self.fillInvalues()
    }
    
    func camelCaseName()->String{
        var result = name;
        if result.hasPrefix("CI"){
            // String needs a lot more convience methods
            let index: String.Index = name.index(name.startIndex, offsetBy: 2)
            result = name.substring(from: index)
            result = result.lowerCasedFirstCharacter()

        }
        
        return result
    }
    
    /// Sort the inputs to remove the inputImage and put the target image at the top
    ///
    /// - returns: The sorted filtered inputs
    func sortedInputs()->[InputAttribute]{
        
        var filteredInput = self.inputs.filter { (input) -> Bool in
            if input.inputType == "inputImage"{
                return false
            } else {
                return true
            }
        }
        
        filteredInput = filteredInput.sorted(by: { (first, second) -> Bool in
            if (first.attributeClass == "CIImage"){
                return true
            } else {
                return false
            }
        })
        
        
        return filteredInput
        
    }
    
    
    /// Save off data into the description
    ///
    /// - parameter filterType: Enum of type FilterType
    /// - parameter value:      the value of type any
    func fillInValueForFilterType(filterType:FilterType, value:Any){
        let valueObj = value as AnyObject
        
        switch filterType {
        case .nameKey:
            self.description = valueObj as? String
            
        }
        
    }
    

    
    /// Store the input values
    ///
    /// - parameter key:   the string representing a potential input Key
    /// - parameter value: A dictionary of type <string,any> referenced by this key
    func createInputValues(key:String, value:Any){
        if key.contains("input"){
            let valueObj = value as AnyObject
            if valueObj is Dictionary<String,Any>{
                let inputAttribute = InputAttribute(numberAttributes: valueObj as! Dictionary<String,Any>, inputType: key)
                self.inputs.append(inputAttribute)
            }
        }
    }
    
    /// turn the NSdictionary weak typing into something useful
    func fillInvalues(){
        // the return is a Dictionary<String,Any> but it is reliably an NSObject since it comes from Objective C
        let outerDictAny = self.rawParams as AnyObject
        
        // and is also reliably a dictionary of type <string,any>
        if let outerDictOpt = outerDictAny as? Dictionary<String,Any>{
            let allKeys = outerDictOpt.keys
            for key in allKeys{
                let value = outerDictOpt[key]
                let filterTypeOpt = FilterType(rawValue:key)
                if let filterType = filterTypeOpt{
                    fillInValueForFilterType(filterType:filterType,value:value as Any)
                }
                createInputValues(key: key, value:value as Any)
                
            }
        }
    }
}

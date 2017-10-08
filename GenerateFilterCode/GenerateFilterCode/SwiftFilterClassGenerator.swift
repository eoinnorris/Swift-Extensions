//
//  File.swift
//  SwiftClassGenerator
//
//  Created by Eoin Norris on 30/10/2016.
//  Copyright © 2016 Eoin Norris. All rights reserved.
//

import Cocoa




class SwiftClassFilterGenerator{
    let ciFilterClassTemplate:String = "import Cocoa\n\nextension CIFilter";

    let tab = "\t"
    let newline = "\n"
    var indentationLevel = 0
    
    init() {
        indentationLevel = 0
    }
    /// creates an function entrey point
    ///
    /// - parameter filter: the filter we are creating the code for
    ///
    /// - returns: the string result
     func generateFunctionName(filter:Filter)->String{
        
        var result = "class func "
        result += filter.camelCaseName()
        result += "("
        for (index,input) in filter.sortedInputs().enumerated(){
            result += input.getParamText()
            if index < (filter.sortedInputs().count-1){
                result += ","
            }
        }
        result += ")->CIFilter?"
        result += addBraces()
        return result
    }
    
    
    /// Creates some boiler plate create the CIImage in the generated code
    ///
    /// - returns: the result string
    func generateCodeToCreateCIImage()->String{
        var result = addNewLineAndIndentation()
       // result += "guard let ciImage = self.ciImage(fromNSImage: self) else {return nil}"
        result += newline
        
        return result
    }
    
    func addLocaVariableInstantiation()->String{
        var result = addNewLineAndIndentation()
        result += "var result:CIFilter? = nil"
        result += newline
        
        return result
    }
    

    
    /// Iterates through the Filter inputs to set the Values for a CIFilter
    ///
    /// - parameter filter: The Filter we are generating code for
    ///
    /// - returns: the resulting string
    func generateCodeToSetFilterValues(filter:Filter)->String{
        var result = addIndendation()
        
        // This is the boilerplate on the existing image
     //   result += "filter.setValue(ciImage, forKey: kCIInputImageKey)"

        // filter through all values and set them
        for input in filter.sortedInputs(){
            result += "filter.setValue(\(input.inputType), forKey:\"\(input.inputType)\")"
            result += addNewLineAndIndentation()
        }
        return result
    }
    
    
    /// Adds a brace and increased the indentation level
    ///
    /// - returns: returns a start brace
    func addBraces()->String{
        indentationLevel += 1
        return "{ \n"
    }
    
    
    /// reduces the indentation level and returns a brace
    ///
    /// - returns: returned string
    func endBraces()->String{
        indentationLevel -= 1
        if (indentationLevel < 0) {
            indentationLevel = 0
        }
        
        var result = addNewLineAndIndentation()
        result += "}"
        return result
    }
    
    
    /// Indet and the add a newline
    ///
    /// - returns: returned string
    func addNewLineAndIndentation()->String{
        var result = newline
        result += addIndendation()
        return result
    }
    
    
    /// Indent using tabs based in the indetation level
    ///
    /// - returns: result string
    func addIndendation()->String{
        var result = ""
        for _ in 0..<indentationLevel {
            result += tab
        }
        return result
    }

    
    /// Create the boiler plate code to create the filter from an input name
    ///
    /// - parameter filter: The filter we are generating code for
    ///
    /// - returns: the result string
    func generateFilterCreationCodeFrom(filter:Filter)->String{
        var result = addIndendation()
        result += "if let filter = CIFilter(name:\"\(filter.name)\")"
        result += addBraces()
        return result
    }
    
    
    
    /// generte the last line of the method
    ///
    /// - returns: the result string
    func generateLastLine()->String{
        var result = ""
        result += endBraces()
        result += addNewLineAndIndentation()
        result +=  "return result"
        result += endBraces()
        return result
    }
    
    
    /// Boiler plate to create the NSImage code from the CIImage code after filters are applied
    ///
    /// - returns: the returned string
    func generateAssignVariableCode()->String{
        let result = "result = filter"
        return result
    }
    
    func addCommentsReturnType()->String{
        return newline + "/// -  Returns: The filtered image or nil";
    }
    
    
    
    
    /// Add comments
    ///
    /// - Parameter filter: The filter to generate comments for
    /// - Returns: a generate comment for this function
 func addComments(filter:Filter)->String{
        if let description = filter.description{
            var result = "///" + " \(description)"
            result += newline + "///"
            result += newline
            result += "/// - Parameters"
            result += newline
            
            
            for (index,input) in filter.sortedInputs().enumerated(){
                result += "///   - Parameter \(input.getParamDescription())"
                if index < (filter.sortedInputs().count-1){
                    result += newline
                }
            }
            
            result += addCommentsReturnType()
            
            return result
        }
        return ""
    }
    
    /// The main method to generate the output code to use this filter in swift
    ///
    /// - parameter filter: The filter we are generating code for
    ///
    /// - returns: The output string
    func createFilterExtensionClass(filter:Filter)->String{
        var result = ciFilterClassTemplate
        result += addBraces()
        result += addComments(filter:filter)
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
    
    
    func generateImageExtensionFrom(filter:Filter)->String{
        return ""
    }
}

class SwiftClassNumberBasedFiltersGenerator:SwiftClassFilterGenerator{
 
}

enum SwiftClassInputType {
    case numeric
}

class SwiftClassGenerator{
    
    let acceptableImageTypes = ["CIImage"]
    var acceptableNumberValuesFilterTypes = ["NSNumber"]
    let numericFilterGenerator:SwiftClassNumberBasedFiltersGenerator!

    init() {
        self.acceptableNumberValuesFilterTypes.append(contentsOf: acceptableImageTypes)
        self.numericFilterGenerator = SwiftClassNumberBasedFiltersGenerator()
    }
    
    
    
 
    
    /// The method that wraps the code generator
    ///
    /// - parameter filter: The Filter object to filter for
    /// - parameter type:   The type of filter
    ///
    /// - returns: string with the extension code added.
    func createFilterExtensionClass(filter:Filter, type:SwiftClassInputType)->String{
        
        var result = ""
        switch type {
        case .numeric:
            result = numericFilterGenerator.createFilterExtensionClass(filter: filter)
        }
     
        return result
    }
    
    
    
    /// Create image extension classes from each Filter
    ///
    /// - parameter filters: An array of Filters ( encapsulating data about CIFilter dicts)
    func generateCIFilterExtensionsFrom(filters:[Filter]){
        let fm = NSWorkspace.shared
        var folderURL:URL? = nil;
        
        // For now lets create filters only for numeric inputs
        for filter in filters{
            let classGenStr = createFilterExtensionClass(filter: filter, type:.numeric)
            let fileName = "CIFilter+\(filter.name)"
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

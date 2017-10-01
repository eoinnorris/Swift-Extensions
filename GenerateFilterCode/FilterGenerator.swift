//
//  File.swift
//  GenerateFilterCode
//
//  Created by Eoin Norris on 30/10/2016.
//  Copyright © 2016 Eoin Norris. All rights reserved.
//

import AppKit


/// Class which creates a list of Filter objects and then passes to FilterGenerator to print out the code
class FilterGenerator{
    
    var filters:[Filter]
    
    init() {
        let dict = ["minorVersion":"1.0"]
        
        let filter = Filter(paramaters: ["Version":dict],name:"Version")
        self.filters = [filter]
    }
    
 
    /// Glue code to get the CIFIlter attributes as s dictionary and create a Filter Object
    func generateFilterAttributes(){
       let filters = CIFilter.filterNames(inCategories: nil)
 
        for filterName in filters{
            let attributeOpt = CIFilter(name:filterName)?.attributes
            if let attribute = attributeOpt{
                let thisFilter = Filter(paramaters: attribute,name:filterName)
                self.filters.append(thisFilter)
            }
        }
    }
    
    
}



































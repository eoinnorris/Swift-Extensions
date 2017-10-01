//
//  GenerateFilterCodeTests.swift
//  GenerateFilterCodeTests
//
//  Created by Eoin Norris on 30/10/2016.
//  Copyright © 2016 Eoin Norris. All rights reserved.
//

import XCTest
@testable import GenerateFilterCode

class GenerateFilterCodeTests: XCTestCase {
    
    var filterGenerator:FilterGenerator!
    var codeGenerator:SwiftClassGenerator!
    var nsImageCodeGenerator:SwiftClassImageGenerator!
    
    
    override func setUp() {
        super.setUp()
        self.filterGenerator = FilterGenerator()
        self.filterGenerator.generateFilterAttributes()
        self.codeGenerator = SwiftClassGenerator()
        self.nsImageCodeGenerator = SwiftClassImageGenerator()

        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    


    func testFilterExtensionGenerator(){
        self.codeGenerator.generateCIFilterExtensionsFrom(filters: self.filterGenerator.filters)
        XCTAssert(true)
    }
    
    func testNSImageExtensionGenerator(){
        self.nsImageCodeGenerator.generateImageExtensionsFrom(filters: self.filterGenerator.filters)
        XCTAssert(true)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

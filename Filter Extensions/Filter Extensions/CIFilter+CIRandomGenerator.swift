import Foundation

extension CIFilter{ 
/// Random Generator
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func randomGenerator()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIRandomGenerator"){ 
			result = filter
		}
		return result
	}
}

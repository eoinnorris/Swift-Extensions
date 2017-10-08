import Foundation

extension CIFilter{ 
/// Maximum Component
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func maximumComponent()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMaximumComponent"){ 
			result = filter
		}
		return result
	}
}

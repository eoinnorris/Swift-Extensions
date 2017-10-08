import Foundation

extension CIFilter{ 
/// Minimum Component
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func minimumComponent()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMinimumComponent"){ 
			result = filter
		}
		return result
	}
}

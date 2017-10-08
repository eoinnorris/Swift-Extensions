import Foundation

extension CIFilter{ 
/// Median
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func medianFilter()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMedianFilter"){ 
			result = filter
		}
		return result
	}
}

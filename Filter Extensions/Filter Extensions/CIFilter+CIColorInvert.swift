import Foundation

extension CIFilter{ 
/// Color Invert
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func colorInvert()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorInvert"){ 
			result = filter
		}
		return result
	}
}

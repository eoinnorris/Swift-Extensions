import Foundation

extension CIFilter{ 
/// Thermal
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func thermal()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIThermal"){ 
			result = filter
		}
		return result
	}
}

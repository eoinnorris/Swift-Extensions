import Foundation

extension CIFilter{ 
/// Straighten
///
/// - Parameters
///   - Parameter inputAngle: An angle in radians.
/// -  Returns: The filtered image or nil
	class func straightenFilter(inputAngle:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIStraightenFilter"){ 
			filter.setValue(inputAngle, forKey:"inputAngle")
			result = filter
		}
		return result
	}
}

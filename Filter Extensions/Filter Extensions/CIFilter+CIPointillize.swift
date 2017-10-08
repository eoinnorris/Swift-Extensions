import Foundation

extension CIFilter{ 
/// Pointillize
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputRadius: The radius of the circles in the resulting pattern.
/// -  Returns: The filtered image or nil
	class func pointillize(inputCenter:CIVector,inputRadius:Double = 20)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPointillize"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

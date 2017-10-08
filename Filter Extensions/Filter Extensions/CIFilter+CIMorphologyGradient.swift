import Foundation

extension CIFilter{ 
/// Morphology Gradient
///
/// - Parameters
///   - Parameter inputRadius: The desired radius of the circular morphological operation to the image.
/// -  Returns: The filtered image or nil
	class func morphologyGradient(inputRadius:Double = 5)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMorphologyGradient"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

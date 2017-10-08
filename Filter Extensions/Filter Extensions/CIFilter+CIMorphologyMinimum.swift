import Foundation

extension CIFilter{ 
/// Morphology Minimum
///
/// - Parameters
///   - Parameter inputRadius: The desired radius of the circular morphological operation to the image.
/// -  Returns: The filtered image or nil
	class func morphologyMinimum(inputRadius:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMorphologyMinimum"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

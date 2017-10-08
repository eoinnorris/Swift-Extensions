import Foundation

extension CIFilter{ 
/// Smooth Linear Gradient
///
/// - Parameters
///   - Parameter inputColor0: The first color to use in the gradient.
///   - Parameter inputPoint1: The ending position of the gradient -- where the second color begins.
///   - Parameter inputPoint0: The starting position of the gradient -- where the first color begins.
///   - Parameter inputColor1: The second color to use in the gradient.
/// -  Returns: The filtered image or nil
	class func smoothLinearGradient(inputColor0:CIColor,inputPoint1:CIVector,inputPoint0:CIVector,inputColor1:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISmoothLinearGradient"){ 
			filter.setValue(inputColor0, forKey:"inputColor0")
			filter.setValue(inputPoint1, forKey:"inputPoint1")
			filter.setValue(inputPoint0, forKey:"inputPoint0")
			filter.setValue(inputColor1, forKey:"inputColor1")
			result = filter
		}
		return result
	}
}

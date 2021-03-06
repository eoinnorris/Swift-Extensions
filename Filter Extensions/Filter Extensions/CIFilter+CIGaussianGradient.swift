import Foundation

extension CIFilter{ 
/// Gaussian Gradient
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputColor0: The first color to use in the gradient.
///   - Parameter inputRadius: The radius of the Gaussian distribution.
///   - Parameter inputColor1: The second color to use in the gradient.
/// -  Returns: The filtered image or nil
	class func gaussianGradient(inputCenter:CIVector,inputColor0:CIColor,inputRadius:Double = 300,inputColor1:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIGaussianGradient"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputColor0, forKey:"inputColor0")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputColor1, forKey:"inputColor1")
			result = filter
		}
		return result
	}
}

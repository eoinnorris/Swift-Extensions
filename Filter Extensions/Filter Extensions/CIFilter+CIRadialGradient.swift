import Foundation

extension CIFilter{ 
/// Radial Gradient
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputColor0: The first color to use in the gradient.
///   - Parameter inputRadius1: The radius of the ending circle to use in the gradient.
///   - Parameter inputRadius0: The radius of the starting circle to use in the gradient.
///   - Parameter inputColor1: The second color to use in the gradient.
/// -  Returns: The filtered image or nil
	class func radialGradient(inputCenter:CIVector,inputColor0:CIColor,inputRadius1:Double = 100,inputRadius0:Double = 5,inputColor1:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIRadialGradient"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputColor0, forKey:"inputColor0")
			filter.setValue(inputRadius1, forKey:"inputRadius1")
			filter.setValue(inputRadius0, forKey:"inputRadius0")
			filter.setValue(inputColor1, forKey:"inputColor1")
			result = filter
		}
		return result
	}
}

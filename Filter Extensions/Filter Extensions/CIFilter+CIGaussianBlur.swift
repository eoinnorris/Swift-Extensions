import Foundation

extension CIFilter{ 
/// Gaussian Blur
///
/// - Parameters
///   - Parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
/// -  Returns: The filtered image or nil
	class func gaussianBlur(inputRadius:Double = 10)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIGaussianBlur"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

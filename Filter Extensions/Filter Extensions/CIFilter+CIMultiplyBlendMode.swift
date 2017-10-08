import Foundation

extension CIFilter{ 
/// Multiply Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	class func multiplyBlendMode(inputBackgroundImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMultiplyBlendMode"){ 
			filter.setValue(inputBackgroundImage, forKey:"inputBackgroundImage")
			result = filter
		}
		return result
	}
}

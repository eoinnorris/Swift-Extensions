import Foundation

extension CIFilter{ 
/// Linear Burn Blend Mode
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	class func linearBurnBlendMode(inputBackgroundImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CILinearBurnBlendMode"){ 
			filter.setValue(inputBackgroundImage, forKey:"inputBackgroundImage")
			result = filter
		}
		return result
	}
}

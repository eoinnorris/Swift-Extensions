import Foundation

extension CIFilter{ 
/// Blend With Blue Mask
///
/// - Parameters
///   - Parameter inputMaskImage: A masking image.
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	class func blendWithBlueMask(inputMaskImage:CIImage,inputBackgroundImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBlendWithBlueMask"){ 
			filter.setValue(inputMaskImage, forKey:"inputMaskImage")
			filter.setValue(inputBackgroundImage, forKey:"inputBackgroundImage")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 
/// Source Over
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	class func sourceOverCompositing(inputBackgroundImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISourceOverCompositing"){ 
			filter.setValue(inputBackgroundImage, forKey:"inputBackgroundImage")
			result = filter
		}
		return result
	}
}

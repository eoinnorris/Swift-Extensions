import Foundation

extension CIFilter{ 
/// Addition
///
/// - Parameters
///   - Parameter inputBackgroundImage: The image to use as a background image.
/// -  Returns: The filtered image or nil
	class func additionCompositing(inputBackgroundImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAdditionCompositing"){ 
			filter.setValue(inputBackgroundImage, forKey:"inputBackgroundImage")
			result = filter
		}
		return result
	}
}

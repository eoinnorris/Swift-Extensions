import Foundation

extension CIFilter{ 
/// Affine Clamp
///
/// - Parameters
///   - Parameter inputTransform: The transform to apply to the image.
/// -  Returns: The filtered image or nil
	class func affineClamp(inputTransform:CGAffineTransform)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAffineClamp"){ 
			filter.setValue(inputTransform, forKey:"inputTransform")
			result = filter
		}
		return result
	}
}

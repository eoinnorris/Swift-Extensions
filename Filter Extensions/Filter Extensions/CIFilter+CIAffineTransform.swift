import Foundation

extension CIFilter{ 
/// Affine Transform
///
/// - Parameters
///   - Parameter inputTransform: A transform to apply to the image.
/// -  Returns: The filtered image or nil
	class func affineTransform(inputTransform:CGAffineTransform)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAffineTransform"){ 
			filter.setValue(inputTransform, forKey:"inputTransform")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 
/// Affine Tile
///
/// - Parameters
///   - Parameter inputTransform: The transform to apply to the image.
/// -  Returns: The filtered image or nil
	class func affineTile(inputTransform:CGAffineTransform)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAffineTile"){ 
			filter.setValue(inputTransform, forKey:"inputTransform")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 
/// Height Field From Mask
///
/// - Parameters
///   - Parameter inputRadius: The distance from the edge of the mask for the smooth transition is proportional to the input radius. Larger values make the transition smoother and more pronounced. Smaller values make the transition approximate a fillet radius.
/// -  Returns: The filtered image or nil
	class func heightFieldFromMask(inputRadius:Double = 10)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHeightFieldFromMask"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

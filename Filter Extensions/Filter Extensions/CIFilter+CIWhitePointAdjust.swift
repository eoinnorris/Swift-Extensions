import Foundation

extension CIFilter{ 
/// White Point Adjust
///
/// - Parameters
///   - Parameter inputColor: A color to use as the white point.
/// -  Returns: The filtered image or nil
	class func whitePointAdjust(inputColor:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIWhitePointAdjust"){ 
			filter.setValue(inputColor, forKey:"inputColor")
			result = filter
		}
		return result
	}
}

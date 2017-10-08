import Foundation

extension CIFilter{ 
/// Disc Blur
///
/// - Parameters
///   - Parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
/// -  Returns: The filtered image or nil
	class func discBlur(inputRadius:Double = 8)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDiscBlur"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

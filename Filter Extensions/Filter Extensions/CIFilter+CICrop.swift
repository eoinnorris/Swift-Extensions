import Foundation

extension CIFilter{ 
/// Crop
///
/// - Parameters
///   - Parameter inputRectangle: The rectangle that specifies the crop to apply to the image.
/// -  Returns: The filtered image or nil
	class func crop(inputRectangle:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICrop"){ 
			filter.setValue(inputRectangle, forKey:"inputRectangle")
			result = filter
		}
		return result
	}
}

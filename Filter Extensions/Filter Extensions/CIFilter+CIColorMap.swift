import Foundation

extension CIFilter{ 
/// Color Map
///
/// - Parameters
///   - Parameter inputGradientImage: The image data from this image transforms the source image values.
/// -  Returns: The filtered image or nil
	class func colorMap(inputGradientImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorMap"){ 
			filter.setValue(inputGradientImage, forKey:"inputGradientImage")
			result = filter
		}
		return result
	}
}

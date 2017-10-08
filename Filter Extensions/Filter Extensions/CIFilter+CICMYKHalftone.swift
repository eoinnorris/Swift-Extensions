import Foundation

extension CIFilter{ 
/// CMYK Halftone
///
/// - Parameters
///   - Parameter inputGCR: The gray component replacement value. The value can vary from 0.0 (none) to 1.0.
///   - Parameter inputAngle: The angle of the pattern.
///   - Parameter inputWidth: The distance between dots in the pattern.
///   - Parameter inputSharpness: The sharpness of the pattern. The larger the value, the sharper the pattern.
///   - Parameter inputCenter: The x and y position to use as the center of the halftone pattern
///   - Parameter inputUCR: The under color removal value. The value can vary from 0.0 to 1.0. 
/// -  Returns: The filtered image or nil
	class func cMYKHalftone(inputGCR:Double = 1,inputAngle:Double = 0,inputWidth:Double = 6,inputSharpness:CGColorSpace,inputCenter:CIVector,inputUCR:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICMYKHalftone"){ 
			filter.setValue(inputGCR, forKey:"inputGCR")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputUCR, forKey:"inputUCR")
			result = filter
		}
		return result
	}
}

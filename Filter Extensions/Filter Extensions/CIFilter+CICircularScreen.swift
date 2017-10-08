import Foundation

extension CIFilter{ 
/// Circular Screen
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the circular screen pattern
///   - Parameter inputWidth: The distance between each circle in the pattern.
///   - Parameter inputSharpness: The sharpness of the circles. The larger the value, the sharper the circles.
/// -  Returns: The filtered image or nil
	class func circularScreen(inputCenter:CIVector,inputWidth:Double = 6,inputSharpness:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICircularScreen"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			result = filter
		}
		return result
	}
}

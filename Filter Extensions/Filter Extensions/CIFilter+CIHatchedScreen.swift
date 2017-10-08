import Foundation

extension CIFilter{ 
/// Hatched Screen
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the hatched screen pattern
///   - Parameter inputAngle: The angle of the pattern.
///   - Parameter inputWidth: The distance between lines in the pattern.
///   - Parameter inputSharpness: The amount of sharpening to apply.
/// -  Returns: The filtered image or nil
	class func hatchedScreen(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 6,inputSharpness:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHatchedScreen"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			result = filter
		}
		return result
	}
}

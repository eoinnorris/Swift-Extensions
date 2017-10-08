import Foundation

extension CIFilter{ 
/// Checkerboard
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputColor1: A color to use for the second set of squares.
///   - Parameter inputColor0: A color to use for the first set of squares.
///   - Parameter inputWidth: The width of the squares in the pattern.
///   - Parameter inputSharpness: The sharpness of the edges in pattern. The smaller the value, the more blurry the pattern. Values range from 0.0 to 1.0.
/// -  Returns: The filtered image or nil
	class func checkerboardGenerator(inputCenter:CIVector,inputColor1:CIColor,inputColor0:CIColor,inputWidth:Double = 80,inputSharpness:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICheckerboardGenerator"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputColor1, forKey:"inputColor1")
			filter.setValue(inputColor0, forKey:"inputColor0")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputSharpness, forKey:"inputSharpness")
			result = filter
		}
		return result
	}
}

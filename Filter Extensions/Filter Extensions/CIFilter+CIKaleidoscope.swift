import Foundation

extension CIFilter{ 
/// Kaleidoscope
///
/// - Parameters
///   - Parameter inputCount: The number of reflections in the pattern.
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputAngle: The angle of reflection.
/// -  Returns: The filtered image or nil
	class func kaleidoscope(inputCount:Double = 6,inputCenter:CIVector,inputAngle:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIKaleidoscope"){ 
			filter.setValue(inputCount, forKey:"inputCount")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			result = filter
		}
		return result
	}
}

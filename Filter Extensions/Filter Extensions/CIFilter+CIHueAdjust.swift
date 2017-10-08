import Foundation

extension CIFilter{ 
/// Hue Adjust
///
/// - Parameters
///   - Parameter inputAngle: An angle (in radians) to use to correct the hue of an image.
/// -  Returns: The filtered image or nil
	class func hueAdjust(inputAngle:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHueAdjust"){ 
			filter.setValue(inputAngle, forKey:"inputAngle")
			result = filter
		}
		return result
	}
}

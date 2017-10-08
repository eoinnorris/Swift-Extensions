import Foundation

extension CIFilter{ 
/// Pinch Distortion
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
///   - Parameter inputScale: The amount of pinching. A value of 0.0 has no effect. A value of 1.0 is the maximum pinch.
/// -  Returns: The filtered image or nil
	class func pinchDistortion(inputCenter:CIVector,inputRadius:Double = 300,inputScale:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPinchDistortion"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}

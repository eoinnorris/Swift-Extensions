import Foundation

extension CIFilter{ 
/// Bump Distortion Linear
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputAngle: The angle (in radians) of the line around which the distortion occurs.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
///   - Parameter inputScale: The scale of the effect.
/// -  Returns: The filtered image or nil
	class func bumpDistortionLinear(inputCenter:CIVector,inputAngle:Double = 0,inputRadius:Double = 300,inputScale:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBumpDistortionLinear"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 
/// Vortex Distortion
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputAngle: The angle (in radians) of the vortex.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
/// -  Returns: The filtered image or nil
	class func vortexDistortion(inputCenter:CIVector,inputAngle:CGColorSpace,inputRadius:Double = 300)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIVortexDistortion"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

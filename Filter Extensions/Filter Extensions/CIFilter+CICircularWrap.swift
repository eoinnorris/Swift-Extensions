import Foundation

extension CIFilter{ 
/// Circular Wrap Distortion
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputAngle: The angle of the effect.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
/// -  Returns: The filtered image or nil
	class func circularWrap(inputCenter:CIVector,inputAngle:Double = 0,inputRadius:Double = 150)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICircularWrap"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputAngle, forKey:"inputAngle")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 
/// Hole Distortion
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
/// -  Returns: The filtered image or nil
	class func holeDistortion(inputCenter:CIVector,inputRadius:Double = 150)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHoleDistortion"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

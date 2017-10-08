import Foundation

extension CIFilter{ 
/// Glass Lozenge
///
/// - Parameters
///   - Parameter inputRadius: The radius of the lozenge. The larger the radius, the wider the extent of the distortion.
///   - Parameter inputPoint1: The x and y position that defines the center of the circle at the other end of the lozenge.
///   - Parameter inputPoint0: The x and y position that defines the center of the circle at one end of the lozenge.
///   - Parameter inputRefraction: The refraction of the glass.
/// -  Returns: The filtered image or nil
	class func glassLozenge(inputRadius:Double = 100,inputPoint1:CIVector,inputPoint0:CIVector,inputRefraction:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIGlassLozenge"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputPoint1, forKey:"inputPoint1")
			filter.setValue(inputPoint0, forKey:"inputPoint0")
			filter.setValue(inputRefraction, forKey:"inputRefraction")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 
/// Torus Lens Distortion
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the torus.
///   - Parameter inputRadius: The outer radius of the torus.
///   - Parameter inputWidth: The width of the ring.
///   - Parameter inputRefraction: The refraction of the glass.
/// -  Returns: The filtered image or nil
	class func torusLensDistortion(inputCenter:CIVector,inputRadius:Double = 160,inputWidth:Double = 80,inputRefraction:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CITorusLensDistortion"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputWidth, forKey:"inputWidth")
			filter.setValue(inputRefraction, forKey:"inputRefraction")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 
/// Glass Distortion
///
/// - Parameters
///   - Parameter inputTexture: A texture to apply to the source image.
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputScale: The amount of texturing of the resulting image. The larger the value, the greater the texturing.
/// -  Returns: The filtered image or nil
	class func glassDistortion(inputTexture:CIImage,inputCenter:CIVector,inputScale:Double = 200)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIGlassDistortion"){ 
			filter.setValue(inputTexture, forKey:"inputTexture")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}

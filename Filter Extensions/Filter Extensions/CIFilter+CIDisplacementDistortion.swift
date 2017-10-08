import Foundation

extension CIFilter{ 
/// Displacement Distortion
///
/// - Parameters
///   - Parameter inputDisplacementImage: An image whose grayscale values will be applied to the source image.
///   - Parameter inputScale: The amount of texturing of the resulting image. The larger the value, the greater the texturing.
/// -  Returns: The filtered image or nil
	class func displacementDistortion(inputDisplacementImage:CIImage,inputScale:Double = 50)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDisplacementDistortion"){ 
			filter.setValue(inputDisplacementImage, forKey:"inputDisplacementImage")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}

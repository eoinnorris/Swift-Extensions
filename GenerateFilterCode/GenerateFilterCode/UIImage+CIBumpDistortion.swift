import Foundation

extension UIImage{ 
/// Bump Distortion
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
///   - Parameter inputScale: The scale of the effect determines the curvature of the bump. A value of 0.0 has no effect. Positive values create an outward bump; negative values create an inward bump.
/// -  Returns: The filtered image or nil
	func bumpDistortion(inputCenter:CIVector,inputRadius:Double = 300,inputScale:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.bumpDistortion(inputCenter:inputCenter,inputRadius:inputRadius,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
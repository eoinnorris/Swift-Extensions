import Foundation

extension UIImage{ 
/// Bump Distortion Linear
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputAngle: The angle (in radians) of the line around which the distortion occurs.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
///   - Parameter inputScale: The scale of the effect.
/// -  Returns: The filtered image or nil
	func bumpDistortionLinear(inputCenter:CIVector,inputAngle:Double = 0,inputRadius:Double = 300,inputScale:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.bumpDistortionLinear(inputCenter:inputCenter,inputAngle:inputAngle,inputRadius:inputRadius,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
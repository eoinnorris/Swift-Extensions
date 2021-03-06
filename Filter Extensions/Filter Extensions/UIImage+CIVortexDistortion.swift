import Foundation

extension UIImage{ 
/// Vortex Distortion
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputAngle: The angle (in radians) of the vortex.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
/// -  Returns: The filtered image or nil
	func vortexDistortion(inputCenter:CIVector,inputAngle:CGColorSpace,inputRadius:Double = 300)->UIImage?{ 
		if let filter = CIFilter.vortexDistortion(inputCenter:inputCenter,inputAngle:inputAngle,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
import Foundation

extension UIImage{ 
/// Circular Wrap Distortion
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputAngle: The angle of the effect.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
/// -  Returns: The filtered image or nil
	func circularWrap(inputCenter:CIVector,inputAngle:Double = 0,inputRadius:Double = 150)->UIImage?{ 
		if let filter = CIFilter.circularWrap(inputCenter:inputCenter,inputAngle:inputAngle,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
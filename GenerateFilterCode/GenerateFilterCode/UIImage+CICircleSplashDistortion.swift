import Foundation

extension UIImage{ 
/// Circle Splash Distortion
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the distortion. The larger the radius, the wider the extent of the distortion.
/// -  Returns: The filtered image or nil
	func circleSplashDistortion(inputCenter:CIVector,inputRadius:Double = 150)->UIImage?{ 
		if let filter = CIFilter.circleSplashDistortion(inputCenter:inputCenter,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
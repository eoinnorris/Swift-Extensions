import Foundation

extension UIImage{ 
/// Glass Lozenge
///
/// - Parameters
///   - Parameter inputRadius: The radius of the lozenge. The larger the radius, the wider the extent of the distortion.
///   - Parameter inputPoint1: The x and y position that defines the center of the circle at the other end of the lozenge.
///   - Parameter inputPoint0: The x and y position that defines the center of the circle at one end of the lozenge.
///   - Parameter inputRefraction: The refraction of the glass.
/// -  Returns: The filtered image or nil
	func glassLozenge(inputRadius:Double = 100,inputPoint1:CIVector,inputPoint0:CIVector,inputRefraction:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.glassLozenge(inputRadius:inputRadius,inputPoint1:inputPoint1,inputPoint0:inputPoint0,inputRefraction:inputRefraction){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
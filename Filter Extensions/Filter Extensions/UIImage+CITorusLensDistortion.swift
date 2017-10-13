import Foundation

extension UIImage{ 
/// Torus Lens Distortion
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the torus.
///   - Parameter inputRadius: The outer radius of the torus.
///   - Parameter inputWidth: The width of the ring.
///   - Parameter inputRefraction: The refraction of the glass.
/// -  Returns: The filtered image or nil
	func torusLensDistortion(inputCenter:CIVector,inputRadius:Double = 160,inputWidth:Double = 80,inputRefraction:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.torusLensDistortion(inputCenter:inputCenter,inputRadius:inputRadius,inputWidth:inputWidth,inputRefraction:inputRefraction){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
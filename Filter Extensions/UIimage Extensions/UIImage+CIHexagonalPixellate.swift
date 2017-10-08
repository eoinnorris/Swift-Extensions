import Foundation

extension UIImage{ 
/// Hexagonal Pixelate
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputScale: The scale determines the size of the hexagons. Larger values result in larger hexagons.
/// -  Returns: The filtered image or nil
	func hexagonalPixellate(inputCenter:CIVector,inputScale:Double = 8)->UIImage?{ 
		if let filter = CIFilter.hexagonalPixellate(inputCenter:inputCenter,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
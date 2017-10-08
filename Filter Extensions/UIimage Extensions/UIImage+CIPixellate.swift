import Foundation

extension UIImage{ 
/// Pixelate
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputScale: The scale determines the size of the squares. Larger values result in larger squares.
/// -  Returns: The filtered image or nil
	func pixellate(inputCenter:CIVector,inputScale:Double = 8)->UIImage?{ 
		if let filter = CIFilter.pixellate(inputCenter:inputCenter,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
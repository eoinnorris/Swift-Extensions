import Foundation

extension UIImage{ 
/// Color Posterize
///
/// - Parameters
///   - Parameter inputLevels: The number of brightness levels to use for each color component. Lower values result in a more extreme poster effect.
/// -  Returns: The filtered image or nil
	func colorPosterize(inputLevels:Double = 6)->UIImage?{ 
		if let filter = CIFilter.colorPosterize(inputLevels:inputLevels){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
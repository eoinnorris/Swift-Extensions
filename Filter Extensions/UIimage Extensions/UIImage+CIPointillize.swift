import Foundation

extension UIImage{ 
/// Pointillize
///
/// - Parameters
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputRadius: The radius of the circles in the resulting pattern.
/// -  Returns: The filtered image or nil
	func pointillize(inputCenter:CIVector,inputRadius:Double = 20)->UIImage?{ 
		if let filter = CIFilter.pointillize(inputCenter:inputCenter,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
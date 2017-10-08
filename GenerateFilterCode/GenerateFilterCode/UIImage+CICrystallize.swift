import Foundation

extension UIImage{ 
/// Crystallize
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the effect. The larger the radius, the larger the resulting crystals.
/// -  Returns: The filtered image or nil
	func crystallize(inputCenter:CIVector,inputRadius:Double = 20)->UIImage?{ 
		if let filter = CIFilter.crystallize(inputCenter:inputCenter,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
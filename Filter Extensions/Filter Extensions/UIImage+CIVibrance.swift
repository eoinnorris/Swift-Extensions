import Foundation

extension UIImage{ 
/// Vibrance
///
/// - Parameters
///   - Parameter inputAmount: The amount to adjust the saturation.
/// -  Returns: The filtered image or nil
	func vibrance(inputAmount:Double = 0)->UIImage?{ 
		if let filter = CIFilter.vibrance(inputAmount:inputAmount){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
import Foundation

extension UIImage{ 
/// Gamma Adjust
///
/// - Parameters
///   - Parameter inputPower: A gamma value to use to correct image brightness. The larger the value, the darker the result.
/// -  Returns: The filtered image or nil
	func gammaAdjust(inputPower:Double = 1)->UIImage?{ 
		if let filter = CIFilter.gammaAdjust(inputPower:inputPower){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
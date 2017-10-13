import Foundation

extension UIImage{ 
/// Straighten
///
/// - Parameters
///   - Parameter inputAngle: An angle in radians.
/// -  Returns: The filtered image or nil
	func straightenFilter(inputAngle:Double = 0)->UIImage?{ 
		if let filter = CIFilter.straightenFilter(inputAngle:inputAngle){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
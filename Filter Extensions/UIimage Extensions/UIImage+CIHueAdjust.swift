import Foundation

extension UIImage{ 
/// Hue Adjust
///
/// - Parameters
///   - Parameter inputAngle: An angle (in radians) to use to correct the hue of an image.
/// -  Returns: The filtered image or nil
	func hueAdjust(inputAngle:Double = 0)->UIImage?{ 
		if let filter = CIFilter.hueAdjust(inputAngle:inputAngle){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
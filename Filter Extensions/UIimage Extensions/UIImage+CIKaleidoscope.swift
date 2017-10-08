import Foundation

extension UIImage{ 
/// Kaleidoscope
///
/// - Parameters
///   - Parameter inputCount: The number of reflections in the pattern.
///   - Parameter inputCenter: The x and y position to use as the center of the effect
///   - Parameter inputAngle: The angle of reflection.
/// -  Returns: The filtered image or nil
	func kaleidoscope(inputCount:Double = 6,inputCenter:CIVector,inputAngle:Double = 0)->UIImage?{ 
		if let filter = CIFilter.kaleidoscope(inputCount:inputCount,inputCenter:inputCenter,inputAngle:inputAngle){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
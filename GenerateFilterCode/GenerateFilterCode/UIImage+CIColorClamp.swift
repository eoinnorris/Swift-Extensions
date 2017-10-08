import Foundation

extension UIImage{ 
/// Color Clamp
///
/// - Parameters
///   - Parameter inputMaxComponents: Higher clamping values
///   - Parameter inputMinComponents: Lower clamping values
/// -  Returns: The filtered image or nil
	func colorClamp(inputMaxComponents:CIVector,inputMinComponents:CIVector)->UIImage?{ 
		if let filter = CIFilter.colorClamp(inputMaxComponents:inputMaxComponents,inputMinComponents:inputMinComponents){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
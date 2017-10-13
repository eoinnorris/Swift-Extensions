import Foundation

extension UIImage{ 
/// Temperature and Tint
///
/// - Parameters
///   - Parameter inputNeutral: 
///   - Parameter inputTargetNeutral: 
/// -  Returns: The filtered image or nil
	func temperatureAndTint(inputNeutral:CIVector,inputTargetNeutral:CIVector)->UIImage?{ 
		if let filter = CIFilter.temperatureAndTint(inputNeutral:inputNeutral,inputTargetNeutral:inputTargetNeutral){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
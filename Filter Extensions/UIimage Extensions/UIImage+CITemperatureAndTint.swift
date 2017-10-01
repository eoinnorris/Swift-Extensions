import Foundation

extension UIImage{ 

	func temperatureAndTint(inputNeutral:CIVector,inputTargetNeutral:CIVector)->UIImage?{ 
		if let filter = CIFilter.temperatureAndTint(inputNeutral:inputNeutral,inputTargetNeutral:inputTargetNeutral){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
import Foundation

extension UIImage{ 

	func colorClamp(inputMaxComponents:CIVector,inputMinComponents:CIVector)->UIImage?{ 
		if let filter = CIFilter.colorClamp(inputMaxComponents:inputMaxComponents,inputMinComponents:inputMinComponents){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
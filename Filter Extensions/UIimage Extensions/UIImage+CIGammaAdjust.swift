import Foundation

extension UIImage{ 

	func gammaAdjust(inputPower:Double = 1)->UIImage?{ 
		if let filter = CIFilter.gammaAdjust(inputPower:inputPower){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
import Foundation

extension UIImage{ 

	func droste(inputInsetPoint1:CIVector,inputZoom:Double = 1,inputRotation:Double = 0,inputStrands:Double = 1,inputPeriodicity:Double = 1,inputInsetPoint0:CIVector)->UIImage?{ 
		if let filter = CIFilter.droste(inputInsetPoint1:inputInsetPoint1,inputZoom:inputZoom,inputRotation:inputRotation,inputStrands:inputStrands,inputPeriodicity:inputPeriodicity,inputInsetPoint0:inputInsetPoint0){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
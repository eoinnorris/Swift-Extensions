import Foundation

extension UIImage{ 

	func colorControls(inputContrast:Double = 1,inputSaturation:Double = 1,inputBrightness:Double = 0)->UIImage?{ 
		if let filter = CIFilter.colorControls(inputContrast:inputContrast,inputSaturation:inputSaturation,inputBrightness:inputBrightness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
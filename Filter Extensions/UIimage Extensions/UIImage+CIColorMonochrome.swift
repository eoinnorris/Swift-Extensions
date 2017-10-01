import Foundation

extension UIImage{ 

	func colorMonochrome(inputColor:CIColor,inputIntensity:Double = 1)->UIImage?{ 
		if let filter = CIFilter.colorMonochrome(inputColor:inputColor,inputIntensity:inputIntensity){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
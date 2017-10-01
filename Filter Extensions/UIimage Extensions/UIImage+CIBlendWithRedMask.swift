import Foundation

extension UIImage{ 

	func blendWithRedMask(inputMaskImage:CIImage,inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.blendWithRedMask(inputMaskImage:inputMaskImage,inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
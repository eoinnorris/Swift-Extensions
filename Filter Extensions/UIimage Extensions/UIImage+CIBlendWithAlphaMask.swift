import Foundation

extension UIImage{ 

	func blendWithAlphaMask(inputMaskImage:CIImage,inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.blendWithAlphaMask(inputMaskImage:inputMaskImage,inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
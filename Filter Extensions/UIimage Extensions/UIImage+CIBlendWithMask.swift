import Foundation

extension UIImage{ 

	func blendWithMask(inputMaskImage:CIImage,inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.blendWithMask(inputMaskImage:inputMaskImage,inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
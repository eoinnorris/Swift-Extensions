import Foundation

extension UIImage{ 

	func blendWithBlueMask(inputMaskImage:CIImage,inputBackgroundImage:CIImage)->UIImage?{ 
		if let filter = CIFilter.blendWithBlueMask(inputMaskImage:inputMaskImage,inputBackgroundImage:inputBackgroundImage){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
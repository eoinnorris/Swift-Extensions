import Foundation

extension UIImage{ 

	func shadedMaterial(inputShadingImage:CIImage,inputScale:Double = 10)->UIImage?{ 
		if let filter = CIFilter.shadedMaterial(inputShadingImage:inputShadingImage,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
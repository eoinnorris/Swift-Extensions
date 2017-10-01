import Foundation

extension UIImage{ 

	func displacementDistortion(inputDisplacementImage:CIImage,inputScale:Double = 50)->UIImage?{ 
		if let filter = CIFilter.displacementDistortion(inputDisplacementImage:inputDisplacementImage,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
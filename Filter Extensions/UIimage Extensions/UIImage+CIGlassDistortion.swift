import Foundation

extension UIImage{ 

	func glassDistortion(inputTexture:CIImage,inputCenter:CIVector,inputScale:Double = 200)->UIImage?{ 
		if let filter = CIFilter.glassDistortion(inputTexture:inputTexture,inputCenter:inputCenter,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
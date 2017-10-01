import Foundation

extension UIImage{ 

	func pinchDistortion(inputCenter:CIVector,inputRadius:Double = 300,inputScale:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.pinchDistortion(inputCenter:inputCenter,inputRadius:inputRadius,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
import Foundation

extension UIImage{ 

	func bumpDistortion(inputCenter:CIVector,inputRadius:Double = 300,inputScale:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.bumpDistortion(inputCenter:inputCenter,inputRadius:inputRadius,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
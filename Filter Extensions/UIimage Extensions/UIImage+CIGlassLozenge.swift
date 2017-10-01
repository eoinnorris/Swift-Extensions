import Foundation

extension UIImage{ 

	func glassLozenge(inputRadius:Double = 100,inputPoint1:CIVector,inputPoint0:CIVector,inputRefraction:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.glassLozenge(inputRadius:inputRadius,inputPoint1:inputPoint1,inputPoint0:inputPoint0,inputRefraction:inputRefraction){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
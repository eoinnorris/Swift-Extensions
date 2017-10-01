import Foundation

extension UIImage{ 

	func torusLensDistortion(inputCenter:CIVector,inputRadius:Double = 160,inputWidth:Double = 80,inputRefraction:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.torusLensDistortion(inputCenter:inputCenter,inputRadius:inputRadius,inputWidth:inputWidth,inputRefraction:inputRefraction){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
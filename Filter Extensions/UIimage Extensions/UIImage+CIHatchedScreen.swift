import Foundation

extension UIImage{ 

	func hatchedScreen(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 6,inputSharpness:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.hatchedScreen(inputCenter:inputCenter,inputAngle:inputAngle,inputWidth:inputWidth,inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
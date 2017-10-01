import Foundation

extension UIImage{ 

	func dotScreen(inputCenter:CIVector,inputAngle:Double = 0,inputWidth:Double = 6,inputSharpness:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.dotScreen(inputCenter:inputCenter,inputAngle:inputAngle,inputWidth:inputWidth,inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
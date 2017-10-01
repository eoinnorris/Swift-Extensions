import Foundation

extension UIImage{ 

	func circularScreen(inputCenter:CIVector,inputWidth:Double = 6,inputSharpness:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.circularScreen(inputCenter:inputCenter,inputWidth:inputWidth,inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
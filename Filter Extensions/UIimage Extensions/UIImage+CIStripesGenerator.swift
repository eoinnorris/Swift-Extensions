import Foundation

extension UIImage{ 

	func stripesGenerator(inputCenter:CIVector,inputColor1:CIColor,inputColor0:CIColor,inputWidth:Double = 80,inputSharpness:Double = 1)->UIImage?{ 
		if let filter = CIFilter.stripesGenerator(inputCenter:inputCenter,inputColor1:inputColor1,inputColor0:inputColor0,inputWidth:inputWidth,inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
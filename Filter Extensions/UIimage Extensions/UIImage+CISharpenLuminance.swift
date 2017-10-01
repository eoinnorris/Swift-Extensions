import Foundation

extension UIImage{ 

	func sharpenLuminance(inputSharpness:CGColorSpace)->UIImage?{ 
		if let filter = CIFilter.sharpenLuminance(inputSharpness:inputSharpness){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
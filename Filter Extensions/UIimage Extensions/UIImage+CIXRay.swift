import Foundation

extension UIImage{ 

	func xRay()->UIImage?{ 
		if let filter = CIFilter.xRay(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
import Foundation

extension UIImage{ 

	func depthToDisparity()->UIImage?{ 
		if let filter = CIFilter.depthToDisparity(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
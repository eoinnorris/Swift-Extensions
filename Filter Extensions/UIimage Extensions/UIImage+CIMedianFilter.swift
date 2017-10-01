import Foundation

extension UIImage{ 

	func medianFilter()->UIImage?{ 
		if let filter = CIFilter.medianFilter(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
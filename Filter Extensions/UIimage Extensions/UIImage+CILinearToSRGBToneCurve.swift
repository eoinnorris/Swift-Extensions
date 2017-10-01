import Foundation

extension UIImage{ 

	func linearToSRGBToneCurve()->UIImage?{ 
		if let filter = CIFilter.linearToSRGBToneCurve(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
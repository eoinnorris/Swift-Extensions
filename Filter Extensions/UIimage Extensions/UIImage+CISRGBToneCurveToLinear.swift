import Foundation

extension UIImage{ 

	func sRGBToneCurveToLinear()->UIImage?{ 
		if let filter = CIFilter.sRGBToneCurveToLinear(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
import Foundation

extension UIImage{ 

	func zoomBlur(inputCenter:CIVector,inputAmount:Double = 20)->UIImage?{ 
		if let filter = CIFilter.zoomBlur(inputCenter:inputCenter,inputAmount:inputAmount){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
import Foundation

extension UIImage{ 

	func crystallize(inputCenter:CIVector,inputRadius:Double = 20)->UIImage?{ 
		if let filter = CIFilter.crystallize(inputCenter:inputCenter,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
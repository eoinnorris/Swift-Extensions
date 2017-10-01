import Foundation

extension UIImage{ 

	func pointillize(inputCenter:CIVector,inputRadius:Double = 20)->UIImage?{ 
		if let filter = CIFilter.pointillize(inputCenter:inputCenter,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
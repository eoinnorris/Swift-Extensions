import Foundation

extension UIImage{ 

	func hexagonalPixellate(inputCenter:CIVector,inputScale:Double = 8)->UIImage?{ 
		if let filter = CIFilter.hexagonalPixellate(inputCenter:inputCenter,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
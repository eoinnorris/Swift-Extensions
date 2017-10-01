import Foundation

extension UIImage{ 

	func pixellate(inputCenter:CIVector,inputScale:Double = 8)->UIImage?{ 
		if let filter = CIFilter.pixellate(inputCenter:inputCenter,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
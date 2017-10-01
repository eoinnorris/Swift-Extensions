import Foundation

extension UIImage{ 

	func lightTunnel(inputCenter:CIVector,inputRotation:Double = 0,inputRadius:Double = 100)->UIImage?{ 
		if let filter = CIFilter.lightTunnel(inputCenter:inputCenter,inputRotation:inputRotation,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
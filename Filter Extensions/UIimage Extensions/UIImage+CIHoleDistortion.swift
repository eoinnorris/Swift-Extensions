import Foundation

extension UIImage{ 

	func holeDistortion(inputCenter:CIVector,inputRadius:Double = 150)->UIImage?{ 
		if let filter = CIFilter.holeDistortion(inputCenter:inputCenter,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
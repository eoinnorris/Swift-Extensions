import Foundation

extension UIImage{ 

	func circleSplashDistortion(inputCenter:CIVector,inputRadius:Double = 150)->UIImage?{ 
		if let filter = CIFilter.circleSplashDistortion(inputCenter:inputCenter,inputRadius:inputRadius){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
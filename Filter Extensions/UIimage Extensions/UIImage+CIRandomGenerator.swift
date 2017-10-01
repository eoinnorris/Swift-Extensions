import Foundation

extension UIImage{ 

	func randomGenerator()->UIImage?{ 
		if let filter = CIFilter.randomGenerator(){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
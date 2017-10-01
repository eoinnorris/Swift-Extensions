import Foundation

extension UIImage{ 

	func labDeltaE(inputImage2:CIImage)->UIImage?{ 
		if let filter = CIFilter.labDeltaE(inputImage2:inputImage2){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
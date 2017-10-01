import Foundation

extension UIImage{ 

	func areaHistogram(inputCount:Double = 64,inputExtent:CIVector,inputScale:Double = 1)->UIImage?{ 
		if let filter = CIFilter.areaHistogram(inputCount:inputCount,inputExtent:inputExtent,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
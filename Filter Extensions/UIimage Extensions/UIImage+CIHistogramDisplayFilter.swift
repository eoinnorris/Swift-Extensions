import Foundation

extension UIImage{ 

	func histogramDisplayFilter(inputHighLimit:Double = 1,inputHeight:Double = 100,inputLowLimit:Double = 0)->UIImage?{ 
		if let filter = CIFilter.histogramDisplayFilter(inputHighLimit:inputHighLimit,inputHeight:inputHeight,inputLowLimit:inputLowLimit){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
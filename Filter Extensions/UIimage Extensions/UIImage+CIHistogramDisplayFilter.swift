import Foundation

extension UIImage{ 
/// Histogram Display
///
/// - Parameters
///   - Parameter inputHighLimit: The fraction of the right portion of the histogram image to make lighter.
///   - Parameter inputHeight: The height of the displayable histogram image.
///   - Parameter inputLowLimit: The fraction of the left portion of the histogram image to make darker
/// -  Returns: The filtered image or nil
	func histogramDisplayFilter(inputHighLimit:Double = 1,inputHeight:Double = 100,inputLowLimit:Double = 0)->UIImage?{ 
		if let filter = CIFilter.histogramDisplayFilter(inputHighLimit:inputHighLimit,inputHeight:inputHeight,inputLowLimit:inputLowLimit){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
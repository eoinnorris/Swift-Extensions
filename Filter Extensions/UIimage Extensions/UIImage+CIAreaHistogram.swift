import Foundation

extension UIImage{ 
/// Area Histogram
///
/// - Parameters
///   - Parameter inputCount: The number of bins for the histogram. This value will determine the width of the output image.
///   - Parameter inputExtent: A rectangle that, after intersection with the image extent, specifies the subregion of the image that you want to process.
///   - Parameter inputScale: The scale value to use for the histogram values. If the scale is 1.0, then the bins in the resulting image will add up to 1.0.
/// -  Returns: The filtered image or nil
	func areaHistogram(inputCount:Double = 64,inputExtent:CIVector,inputScale:Double = 1)->UIImage?{ 
		if let filter = CIFilter.areaHistogram(inputCount:inputCount,inputExtent:inputExtent,inputScale:inputScale){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}

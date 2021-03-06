import Foundation

extension CIFilter{ 
/// Histogram Display
///
/// - Parameters
///   - Parameter inputHighLimit: The fraction of the right portion of the histogram image to make lighter.
///   - Parameter inputHeight: The height of the displayable histogram image.
///   - Parameter inputLowLimit: The fraction of the left portion of the histogram image to make darker
/// -  Returns: The filtered image or nil
	class func histogramDisplayFilter(inputHighLimit:Double = 1,inputHeight:Double = 100,inputLowLimit:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHistogramDisplayFilter"){ 
			filter.setValue(inputHighLimit, forKey:"inputHighLimit")
			filter.setValue(inputHeight, forKey:"inputHeight")
			filter.setValue(inputLowLimit, forKey:"inputLowLimit")
			result = filter
		}
		return result
	}
}

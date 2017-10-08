import Foundation

extension CIFilter{ 
/// Area Histogram
///
/// - Parameters
///   - Parameter inputCount: The number of bins for the histogram. This value will determine the width of the output image.
///   - Parameter inputExtent: A rectangle that, after intersection with the image extent, specifies the subregion of the image that you want to process.
///   - Parameter inputScale: The scale value to use for the histogram values. If the scale is 1.0, then the bins in the resulting image will add up to 1.0.
/// -  Returns: The filtered image or nil
	class func areaHistogram(inputCount:Double = 64,inputExtent:CIVector,inputScale:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAreaHistogram"){ 
			filter.setValue(inputCount, forKey:"inputCount")
			filter.setValue(inputExtent, forKey:"inputExtent")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}

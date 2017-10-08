import Foundation

extension CIFilter{ 
/// Exposure Adjust
///
/// - Parameters
///   - Parameter inputEV: The amount to adjust the exposure of the image by. The larger the value, the brighter the exposure.
/// -  Returns: The filtered image or nil
	class func exposureAdjust(inputEV:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIExposureAdjust"){ 
			filter.setValue(inputEV, forKey:"inputEV")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 
/// Vibrance
///
/// - Parameters
///   - Parameter inputAmount: The amount to adjust the saturation.
/// -  Returns: The filtered image or nil
	class func vibrance(inputAmount:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIVibrance"){ 
			filter.setValue(inputAmount, forKey:"inputAmount")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 
/// Gamma Adjust
///
/// - Parameters
///   - Parameter inputPower: A gamma value to use to correct image brightness. The larger the value, the darker the result.
/// -  Returns: The filtered image or nil
	class func gammaAdjust(inputPower:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIGammaAdjust"){ 
			filter.setValue(inputPower, forKey:"inputPower")
			result = filter
		}
		return result
	}
}

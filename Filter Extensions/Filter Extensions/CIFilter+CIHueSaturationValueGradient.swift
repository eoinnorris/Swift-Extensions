import Foundation

extension CIFilter{ 
/// Hue/Saturation/Value Gradient
///
/// - Parameters
///   - Parameter inputValue: 
///   - Parameter inputColorSpace: The CGColorSpaceRef that the color wheel should be generated in.
///   - Parameter inputSoftness: 
///   - Parameter inputRadius: The distance from the center of the effect.
///   - Parameter inputDither: 
/// -  Returns: The filtered image or nil
	class func hueSaturationValueGradient(inputValue:Double = 1,inputColorSpace:CGColorSpace,inputSoftness:Double = 1,inputRadius:Double = 300,inputDither:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHueSaturationValueGradient"){ 
			filter.setValue(inputValue, forKey:"inputValue")
			filter.setValue(inputColorSpace, forKey:"inputColorSpace")
			filter.setValue(inputSoftness, forKey:"inputSoftness")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputDither, forKey:"inputDither")
			result = filter
		}
		return result
	}
}

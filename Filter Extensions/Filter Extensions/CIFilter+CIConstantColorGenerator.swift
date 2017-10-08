import Foundation

extension CIFilter{ 
/// Constant Color
///
/// - Parameters
///   - Parameter inputColor: The color to generate.
/// -  Returns: The filtered image or nil
	class func constantColorGenerator(inputColor:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIConstantColorGenerator"){ 
			filter.setValue(inputColor, forKey:"inputColor")
			result = filter
		}
		return result
	}
}

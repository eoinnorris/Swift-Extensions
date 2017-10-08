import Foundation

extension CIFilter{ 
/// False Color
///
/// - Parameters
///   - Parameter inputColor0: The first color to use for the color ramp.
///   - Parameter inputColor1: The second color to use for the color ramp.
/// -  Returns: The filtered image or nil
	class func falseColor(inputColor0:CIColor,inputColor1:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIFalseColor"){ 
			filter.setValue(inputColor0, forKey:"inputColor0")
			filter.setValue(inputColor1, forKey:"inputColor1")
			result = filter
		}
		return result
	}
}

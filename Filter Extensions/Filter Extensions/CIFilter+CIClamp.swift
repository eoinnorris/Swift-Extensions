import Foundation

extension CIFilter{ 
/// Clamp
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that defines the extent of the effect.
/// -  Returns: The filtered image or nil
	class func clamp(inputExtent:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIClamp"){ 
			filter.setValue(inputExtent, forKey:"inputExtent")
			result = filter
		}
		return result
	}
}

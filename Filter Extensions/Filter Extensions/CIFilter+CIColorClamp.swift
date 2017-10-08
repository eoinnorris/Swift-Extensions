import Foundation

extension CIFilter{ 
/// Color Clamp
///
/// - Parameters
///   - Parameter inputMaxComponents: Higher clamping values
///   - Parameter inputMinComponents: Lower clamping values
/// -  Returns: The filtered image or nil
	class func colorClamp(inputMaxComponents:CIVector,inputMinComponents:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorClamp"){ 
			filter.setValue(inputMaxComponents, forKey:"inputMaxComponents")
			filter.setValue(inputMinComponents, forKey:"inputMinComponents")
			result = filter
		}
		return result
	}
}

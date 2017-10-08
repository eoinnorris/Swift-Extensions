import Foundation

extension CIFilter{ 
/// Nine Part Stretched
///
/// - Parameters
///   - Parameter inputBreakpoint0: Lower left corner of image to retain before stretching begins.
///   - Parameter inputBreakpoint1: Upper right corner of image to retain after stretching ends.
///   - Parameter inputGrowAmount: 
/// -  Returns: The filtered image or nil
	class func ninePartStretched(inputBreakpoint0:CIVector,inputBreakpoint1:CIVector,inputGrowAmount:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CINinePartStretched"){ 
			filter.setValue(inputBreakpoint0, forKey:"inputBreakpoint0")
			filter.setValue(inputBreakpoint1, forKey:"inputBreakpoint1")
			filter.setValue(inputGrowAmount, forKey:"inputGrowAmount")
			result = filter
		}
		return result
	}
}

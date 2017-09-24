import Cocoa

extension CIFilter{ 

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
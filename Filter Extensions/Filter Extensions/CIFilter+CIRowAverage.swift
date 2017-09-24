import Cocoa

extension CIFilter{ 

	class func rowAverage(inputExtent:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIRowAverage"){ 
			filter.setValue(inputExtent, forKey:"inputExtent")
			result = filter
		}
		return result
	}
}
import Cocoa

extension CIFilter{ 

	class func columnAverage(inputExtent:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColumnAverage"){ 
			filter.setValue(inputExtent, forKey:"inputExtent")
			result = filter
		}
		return result
	}
}
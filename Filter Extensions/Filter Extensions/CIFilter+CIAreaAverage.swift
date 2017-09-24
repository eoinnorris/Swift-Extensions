import Cocoa

extension CIFilter{ 

	class func areaAverage(inputExtent:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAreaAverage"){ 
			filter.setValue(inputExtent, forKey:"inputExtent")
			result = filter
		}
		return result
	}
}
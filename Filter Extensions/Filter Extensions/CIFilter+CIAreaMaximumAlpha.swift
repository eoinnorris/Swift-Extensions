import Cocoa

extension CIFilter{ 

	class func areaMaximumAlpha(inputExtent:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAreaMaximumAlpha"){ 
			filter.setValue(inputExtent, forKey:"inputExtent")
			result = filter
		}
		return result
	}
}
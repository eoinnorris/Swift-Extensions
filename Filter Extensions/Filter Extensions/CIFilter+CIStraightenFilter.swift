import Cocoa

extension CIFilter{ 

	class func straightenFilter(inputAngle:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIStraightenFilter"){ 
			filter.setValue(inputAngle, forKey:"inputAngle")
			result = filter
		}
		return result
	}
}
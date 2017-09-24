import Cocoa

extension CIFilter{ 

	class func linearToSRGBToneCurve()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CILinearToSRGBToneCurve"){ 
			result = filter
		}
		return result
	}
}
import Foundation

extension CIFilter{ 

	class func sRGBToneCurveToLinear()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISRGBToneCurveToLinear"){ 
			result = filter
		}
		return result
	}
}

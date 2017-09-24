import Cocoa

extension CIFilter{ 

	class func whitePointAdjust(inputColor:CIColor)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIWhitePointAdjust"){ 
			filter.setValue(inputColor, forKey:"inputColor")
			result = filter
		}
		return result
	}
}
import Cocoa

extension CIFilter{ 

	class func sourceAtopCompositing(inputBackgroundImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISourceAtopCompositing"){ 
			filter.setValue(inputBackgroundImage, forKey:"inputBackgroundImage")
			result = filter
		}
		return result
	}
}
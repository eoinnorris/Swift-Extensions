import Cocoa

extension CIFilter{ 

	class func sourceOverCompositing(inputBackgroundImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISourceOverCompositing"){ 
			filter.setValue(inputBackgroundImage, forKey:"inputBackgroundImage")
			result = filter
		}
		return result
	}
}
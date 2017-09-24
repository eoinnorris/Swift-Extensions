import Cocoa

extension CIFilter{ 

	class func minimumCompositing(inputBackgroundImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMinimumCompositing"){ 
			filter.setValue(inputBackgroundImage, forKey:"inputBackgroundImage")
			result = filter
		}
		return result
	}
}
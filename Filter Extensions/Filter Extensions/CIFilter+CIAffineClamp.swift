import Cocoa

extension CIFilter{ 

	class func affineClamp(inputTransform:NSAffineTransform)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAffineClamp"){ 
			filter.setValue(inputTransform, forKey:"inputTransform")
			result = filter
		}
		return result
	}
}
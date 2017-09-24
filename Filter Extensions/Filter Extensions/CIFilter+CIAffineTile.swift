import Cocoa

extension CIFilter{ 

	class func affineTile(inputTransform:NSAffineTransform)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAffineTile"){ 
			filter.setValue(inputTransform, forKey:"inputTransform")
			result = filter
		}
		return result
	}
}
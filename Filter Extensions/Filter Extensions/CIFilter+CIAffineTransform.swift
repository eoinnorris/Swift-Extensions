import Foundation

extension CIFilter{ 

	class func affineTransform(inputTransform:CGAffineTransform)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAffineTransform"){ 
			filter.setValue(inputTransform, forKey:"inputTransform")
			result = filter
		}
		return result
	}
}

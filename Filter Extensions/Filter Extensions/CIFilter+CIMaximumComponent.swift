import Cocoa

extension CIFilter{ 

	class func maximumComponent()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMaximumComponent"){ 
			result = filter
		}
		return result
	}
}
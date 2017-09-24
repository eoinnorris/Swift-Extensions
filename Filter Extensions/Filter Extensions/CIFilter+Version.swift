import Cocoa

extension CIFilter{ 

	class func Version()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"Version"){ 
			result = filter
		}
		return result
	}
}
import Cocoa

extension CIFilter{ 

	class func maskToAlpha()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMaskToAlpha"){ 
			result = filter
		}
		return result
	}
}
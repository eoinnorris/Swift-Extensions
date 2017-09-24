import Cocoa

extension CIFilter{ 

	class func randomGenerator()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIRandomGenerator"){ 
			result = filter
		}
		return result
	}
}
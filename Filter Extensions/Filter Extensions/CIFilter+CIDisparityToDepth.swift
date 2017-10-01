import Foundation

extension CIFilter{ 

	class func disparityToDepth()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDisparityToDepth"){ 
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 

	class func minimumComponent()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMinimumComponent"){ 
			result = filter
		}
		return result
	}
}

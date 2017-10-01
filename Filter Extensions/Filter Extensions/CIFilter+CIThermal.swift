import Foundation

extension CIFilter{ 

	class func thermal()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIThermal"){ 
			result = filter
		}
		return result
	}
}

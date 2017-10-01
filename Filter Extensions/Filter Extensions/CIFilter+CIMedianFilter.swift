import Foundation

extension CIFilter{ 

	class func medianFilter()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIMedianFilter"){ 
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 

	class func edges(inputIntensity:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIEdges"){ 
			filter.setValue(inputIntensity, forKey:"inputIntensity")
			result = filter
		}
		return result
	}
}

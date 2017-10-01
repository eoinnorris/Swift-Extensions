import Foundation

extension CIFilter{ 

	class func edgeWork(inputRadius:Double = 3)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIEdgeWork"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

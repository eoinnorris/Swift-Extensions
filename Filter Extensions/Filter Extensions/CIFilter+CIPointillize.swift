import Foundation

extension CIFilter{ 

	class func pointillize(inputCenter:CIVector,inputRadius:Double = 20)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPointillize"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 

	class func hexagonalPixellate(inputCenter:CIVector,inputScale:Double = 8)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHexagonalPixellate"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}

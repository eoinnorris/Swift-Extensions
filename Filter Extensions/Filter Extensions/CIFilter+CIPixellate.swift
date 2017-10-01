import Foundation

extension CIFilter{ 

	class func pixellate(inputCenter:CIVector,inputScale:Double = 8)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIPixellate"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputScale, forKey:"inputScale")
			result = filter
		}
		return result
	}
}

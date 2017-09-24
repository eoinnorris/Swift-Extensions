import Cocoa

extension CIFilter{ 

	class func crystallize(inputCenter:CIVector,inputRadius:Double = 20)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICrystallize"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
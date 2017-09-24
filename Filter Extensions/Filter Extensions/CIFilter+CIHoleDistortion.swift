import Cocoa

extension CIFilter{ 

	class func holeDistortion(inputCenter:CIVector,inputRadius:Double = 150)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHoleDistortion"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}
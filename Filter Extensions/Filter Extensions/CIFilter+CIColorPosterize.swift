import Cocoa

extension CIFilter{ 

	class func colorPosterize(inputLevels:Double = 6)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorPosterize"){ 
			filter.setValue(inputLevels, forKey:"inputLevels")
			result = filter
		}
		return result
	}
}
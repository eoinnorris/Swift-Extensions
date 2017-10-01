import Foundation

extension CIFilter{ 

	class func crop(inputRectangle:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICrop"){ 
			filter.setValue(inputRectangle, forKey:"inputRectangle")
			result = filter
		}
		return result
	}
}

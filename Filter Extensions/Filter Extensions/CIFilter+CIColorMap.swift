import Cocoa

extension CIFilter{ 

	class func colorMap(inputGradientImage:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorMap"){ 
			filter.setValue(inputGradientImage, forKey:"inputGradientImage")
			result = filter
		}
		return result
	}
}
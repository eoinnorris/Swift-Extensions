import Cocoa

extension CIFilter{ 

	class func histogramDisplayFilter(inputHighLimit:Double = 1,inputHeight:Double = 100,inputLowLimit:Double = 0)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIHistogramDisplayFilter"){ 
			filter.setValue(inputHighLimit, forKey:"inputHighLimit")
			filter.setValue(inputHeight, forKey:"inputHeight")
			filter.setValue(inputLowLimit, forKey:"inputLowLimit")
			result = filter
		}
		return result
	}
}
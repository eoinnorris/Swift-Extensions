import Cocoa

extension CIFilter{ 

	class func droste(inputInsetPoint1:CIVector,inputZoom:Double = 1,inputRotation:Double = 0,inputStrands:Double = 1,inputPeriodicity:Double = 1,inputInsetPoint0:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDroste"){ 
			filter.setValue(inputInsetPoint1, forKey:"inputInsetPoint1")
			filter.setValue(inputZoom, forKey:"inputZoom")
			filter.setValue(inputRotation, forKey:"inputRotation")
			filter.setValue(inputStrands, forKey:"inputStrands")
			filter.setValue(inputPeriodicity, forKey:"inputPeriodicity")
			filter.setValue(inputInsetPoint0, forKey:"inputInsetPoint0")
			result = filter
		}
		return result
	}
}
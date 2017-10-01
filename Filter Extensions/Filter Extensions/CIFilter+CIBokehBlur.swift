import Foundation

extension CIFilter{ 

	class func bokehBlur(inputSoftness:Double = 1,inputRadius:Double = 20,inputRingAmount:Double = 0,inputRingSize:CGColorSpace)->CIFilter?{

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIBokehBlur"){ 
			filter.setValue(inputSoftness, forKey:"inputSoftness")
			filter.setValue(inputRadius, forKey:"inputRadius")
			filter.setValue(inputRingAmount, forKey:"inputRingAmount")
			filter.setValue(inputRingSize, forKey:"inputRingSize")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 

	class func sunbeamsGenerator(inputStriationContrast:CGColorSpace,inputColor:CIColor,inputTime:Double = 0,inputSunRadius:Double = 40,inputCenter:CIVector,inputMaxStriationRadius:CGColorSpace,inputStriationStrength:CGColorSpace)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CISunbeamsGenerator"){ 
			filter.setValue(inputStriationContrast, forKey:"inputStriationContrast")
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputSunRadius, forKey:"inputSunRadius")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputMaxStriationRadius, forKey:"inputMaxStriationRadius")
			filter.setValue(inputStriationStrength, forKey:"inputStriationStrength")
			result = filter
		}
		return result
	}
}

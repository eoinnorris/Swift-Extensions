import Foundation

extension CIFilter{ 

	class func lenticularHaloGenerator(inputStriationContrast:Double = 1,inputColor:CIColor,inputTime:Double = 0,inputHaloRadius:Double = 70,inputCenter:CIVector,inputHaloOverlap:CGColorSpace,inputStriationStrength:CGColorSpace,inputHaloWidth:Double = 87)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CILenticularHaloGenerator"){ 
			filter.setValue(inputStriationContrast, forKey:"inputStriationContrast")
			filter.setValue(inputColor, forKey:"inputColor")
			filter.setValue(inputTime, forKey:"inputTime")
			filter.setValue(inputHaloRadius, forKey:"inputHaloRadius")
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputHaloOverlap, forKey:"inputHaloOverlap")
			filter.setValue(inputStriationStrength, forKey:"inputStriationStrength")
			filter.setValue(inputHaloWidth, forKey:"inputHaloWidth")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 
/// Bokeh Blur
///
/// - Parameters
///   - Parameter inputSoftness: 
///   - Parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
///   - Parameter inputRingAmount: The amount of extra emphasis at the ring of the bokeh.
///   - Parameter inputRingSize: The size of extra emphasis at the ring of the bokeh
/// -  Returns: The filtered image or nil
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

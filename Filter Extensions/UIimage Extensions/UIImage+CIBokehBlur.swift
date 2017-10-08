import Foundation

extension UIImage{ 
/// Bokeh Blur
///
/// - Parameters
///   - Parameter inputSoftness: 
///   - Parameter inputRadius: The radius determines how many pixels are used to create the blur. The larger the radius, the blurrier the result.
///   - Parameter inputRingAmount: The amount of extra emphasis at the ring of the bokeh.
///   - Parameter inputRingSize: The size of extra emphasis at the ring of the bokeh
/// -  Returns: The filtered image or nil
	func bokehBlur(inputSoftness:Double = 1,inputRadius:Double = 20,inputRingAmount:Double = 0,inputRingSize:CGColorSpace)->UIImage?{
		if let filter = CIFilter.bokehBlur(inputSoftness:inputSoftness,inputRadius:inputRadius,inputRingAmount:inputRingAmount,inputRingSize:inputRingSize){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}

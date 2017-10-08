import Foundation

extension CIFilter{ 
/// Tone Curve
///
/// - Parameters
///   - Parameter inputPoint1: 
///   - Parameter inputPoint4: 
///   - Parameter inputPoint0: 
///   - Parameter inputPoint3: 
///   - Parameter inputPoint2: 
/// -  Returns: The filtered image or nil
	class func toneCurve(inputPoint1:CIVector,inputPoint4:CIVector,inputPoint0:CIVector,inputPoint3:CIVector,inputPoint2:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIToneCurve"){ 
			filter.setValue(inputPoint1, forKey:"inputPoint1")
			filter.setValue(inputPoint4, forKey:"inputPoint4")
			filter.setValue(inputPoint0, forKey:"inputPoint0")
			filter.setValue(inputPoint3, forKey:"inputPoint3")
			filter.setValue(inputPoint2, forKey:"inputPoint2")
			result = filter
		}
		return result
	}
}

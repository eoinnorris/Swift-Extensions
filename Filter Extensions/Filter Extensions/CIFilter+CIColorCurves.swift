import Foundation

extension CIFilter{ 
/// Color Curves
///
/// - Parameters
///   - Parameter inputCurvesDomain: 
///   - Parameter inputCurvesData: 
///   - Parameter inputColorSpace: 
/// -  Returns: The filtered image or nil
	class func colorCurves(inputCurvesDomain:CIVector,inputCurvesData:NSData,inputColorSpace:NSObject)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorCurves"){ 
			filter.setValue(inputCurvesDomain, forKey:"inputCurvesDomain")
			filter.setValue(inputCurvesData, forKey:"inputCurvesData")
			filter.setValue(inputColorSpace, forKey:"inputColorSpace")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 

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

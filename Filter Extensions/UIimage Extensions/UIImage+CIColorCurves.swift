import Foundation

extension UIImage{ 

	func colorCurves(inputCurvesDomain:CIVector,inputCurvesData:NSData,inputColorSpace:NSObject)->UIImage?{ 
		if let filter = CIFilter.colorCurves(inputCurvesDomain:inputCurvesDomain,inputCurvesData:inputCurvesData,inputColorSpace:inputColorSpace){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
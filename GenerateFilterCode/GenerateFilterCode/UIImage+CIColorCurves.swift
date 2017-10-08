import Foundation

extension UIImage{ 
/// Color Curves
///
/// - Parameters
///   - Parameter inputCurvesDomain: 
///   - Parameter inputCurvesData: 
///   - Parameter inputColorSpace: 
/// -  Returns: The filtered image or nil
	func colorCurves(inputCurvesDomain:CIVector,inputCurvesData:NSData,inputColorSpace:NSObject)->UIImage?{ 
		if let filter = CIFilter.colorCurves(inputCurvesDomain:inputCurvesDomain,inputCurvesData:inputCurvesData,inputColorSpace:inputColorSpace){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
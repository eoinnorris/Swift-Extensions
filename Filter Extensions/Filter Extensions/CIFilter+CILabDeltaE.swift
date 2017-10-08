import Foundation

extension CIFilter{ 
/// Lab ∆E
///
/// - Parameters
///   - Parameter inputImage2: 
/// -  Returns: The filtered image or nil
	class func labDeltaE(inputImage2:CIImage)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CILabDeltaE"){ 
			filter.setValue(inputImage2, forKey:"inputImage2")
			result = filter
		}
		return result
	}
}

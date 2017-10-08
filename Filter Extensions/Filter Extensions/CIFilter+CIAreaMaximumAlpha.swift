import Foundation

extension CIFilter{ 
/// Area Maximum Alpha
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
/// -  Returns: The filtered image or nil
	class func areaMaximumAlpha(inputExtent:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAreaMaximumAlpha"){ 
			filter.setValue(inputExtent, forKey:"inputExtent")
			result = filter
		}
		return result
	}
}

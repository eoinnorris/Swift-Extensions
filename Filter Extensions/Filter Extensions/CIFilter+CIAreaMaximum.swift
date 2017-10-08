import Foundation

extension CIFilter{ 
/// Area Maximum
///
/// - Parameters
///   - Parameter inputExtent: A rectangle that specifies the subregion of the image that you want to process.
/// -  Returns: The filtered image or nil
	class func areaMaximum(inputExtent:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAreaMaximum"){ 
			filter.setValue(inputExtent, forKey:"inputExtent")
			result = filter
		}
		return result
	}
}

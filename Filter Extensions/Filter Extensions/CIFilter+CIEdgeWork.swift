import Foundation

extension CIFilter{ 
/// Edge Work
///
/// - Parameters
///   - Parameter inputRadius: The thickness of the edges. The larger the value, the thicker the edges.
/// -  Returns: The filtered image or nil
	class func edgeWork(inputRadius:Double = 3)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIEdgeWork"){ 
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

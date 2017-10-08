import Foundation

extension CIFilter{ 
/// Edges
///
/// - Parameters
///   - Parameter inputIntensity: The intensity of the edges. The larger the value, the higher the intensity.
/// -  Returns: The filtered image or nil
	class func edges(inputIntensity:Double = 1)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIEdges"){ 
			filter.setValue(inputIntensity, forKey:"inputIntensity")
			result = filter
		}
		return result
	}
}

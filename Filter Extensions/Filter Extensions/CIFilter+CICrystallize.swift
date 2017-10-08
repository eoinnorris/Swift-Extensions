import Foundation

extension CIFilter{ 
/// Crystallize
///
/// - Parameters
///   - Parameter inputCenter: The center of the effect as x and y coordinates.
///   - Parameter inputRadius: The radius determines how many pixels are used to create the effect. The larger the radius, the larger the resulting crystals.
/// -  Returns: The filtered image or nil
	class func crystallize(inputCenter:CIVector,inputRadius:Double = 20)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CICrystallize"){ 
			filter.setValue(inputCenter, forKey:"inputCenter")
			filter.setValue(inputRadius, forKey:"inputRadius")
			result = filter
		}
		return result
	}
}

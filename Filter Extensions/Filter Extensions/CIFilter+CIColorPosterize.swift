import Foundation

extension CIFilter{ 
/// Color Posterize
///
/// - Parameters
///   - Parameter inputLevels: The number of brightness levels to use for each color component. Lower values result in a more extreme poster effect.
/// -  Returns: The filtered image or nil
	class func colorPosterize(inputLevels:Double = 6)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorPosterize"){ 
			filter.setValue(inputLevels, forKey:"inputLevels")
			result = filter
		}
		return result
	}
}

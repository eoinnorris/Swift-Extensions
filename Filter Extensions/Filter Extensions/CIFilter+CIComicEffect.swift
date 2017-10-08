import Foundation

extension CIFilter{ 
/// Comic Effect
///
/// - Parameters

/// -  Returns: The filtered image or nil
	class func comicEffect()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIComicEffect"){ 
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 

	class func comicEffect()->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIComicEffect"){ 
			result = filter
		}
		return result
	}
}

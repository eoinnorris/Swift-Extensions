import Foundation

extension CIFilter{ 

	class func affineTile(inputTransform:CGAffineTransform)->CIFilter?{

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIAffineTile"){ 
			filter.setValue(inputTransform, forKey:"inputTransform")
			result = filter
		}
		return result
	}
}

import Foundation

extension CIFilter{ 

	class func colorClamp(inputMaxComponents:CIVector,inputMinComponents:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIColorClamp"){ 
			filter.setValue(inputMaxComponents, forKey:"inputMaxComponents")
			filter.setValue(inputMinComponents, forKey:"inputMinComponents")
			result = filter
		}
		return result
	}
}

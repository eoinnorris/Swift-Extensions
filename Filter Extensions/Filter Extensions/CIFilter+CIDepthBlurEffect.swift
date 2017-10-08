import Foundation
import AVFoundation

extension CIFilter{ 
/// Depth Blur Effect
///
/// - Parameters
///   - Parameter inputDisparityImage: 
///   - Parameter inputRightEyePositions: 
///   - Parameter inputCalibrationData: 
///   - Parameter inputChinPositions: 
///   - Parameter inputLeftEyePositions: 
///   - Parameter inputAuxDataMetadata: 
///   - Parameter inputAperture: 
///   - Parameter inputNosePositions: 
///   - Parameter inputLumaNoiseScale: 
///   - Parameter inputScaleFactor: 
///   - Parameter inputFocusRect: 
/// -  Returns: The filtered image or nil
	class func depthBlurEffect(inputDisparityImage:CIImage,inputRightEyePositions:CIVector,inputCalibrationData:AVCameraCalibrationData,inputChinPositions:CIVector,inputLeftEyePositions:CIVector,inputAuxDataMetadata:NSDictionary,inputAperture:Double = 0,inputNosePositions:CIVector,inputLumaNoiseScale:Double = 0,inputScaleFactor:Double = 1,inputFocusRect:CIVector)->CIFilter?{ 

		var result:CIFilter? = nil
		if let filter = CIFilter(name:"CIDepthBlurEffect"){ 
			filter.setValue(inputDisparityImage, forKey:"inputDisparityImage")
			filter.setValue(inputRightEyePositions, forKey:"inputRightEyePositions")
			filter.setValue(inputCalibrationData, forKey:"inputCalibrationData")
			filter.setValue(inputChinPositions, forKey:"inputChinPositions")
			filter.setValue(inputLeftEyePositions, forKey:"inputLeftEyePositions")
			filter.setValue(inputAuxDataMetadata, forKey:"inputAuxDataMetadata")
			filter.setValue(inputAperture, forKey:"inputAperture")
			filter.setValue(inputNosePositions, forKey:"inputNosePositions")
			filter.setValue(inputLumaNoiseScale, forKey:"inputLumaNoiseScale")
			filter.setValue(inputScaleFactor, forKey:"inputScaleFactor")
			filter.setValue(inputFocusRect, forKey:"inputFocusRect")
			result = filter
		}
		return result
	}
}

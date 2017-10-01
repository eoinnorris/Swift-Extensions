import Foundation

extension UIImage{ 

	func depthBlurEffect(inputDisparityImage:CIImage,inputRightEyePositions:CIVector,inputCalibrationData:AVCameraCalibrationData,inputChinPositions:CIVector,inputLeftEyePositions:CIVector,inputAuxDataMetadata:NSDictionary,inputAperture:Double = 0,inputNosePositions:CIVector,inputLumaNoiseScale:Double = 0,inputScaleFactor:Double = 1,inputFocusRect:CIVector)->UIImage?{ 
		if let filter = CIFilter.depthBlurEffect(inputDisparityImage:inputDisparityImage,inputRightEyePositions:inputRightEyePositions,inputCalibrationData:inputCalibrationData,inputChinPositions:inputChinPositions,inputLeftEyePositions:inputLeftEyePositions,inputAuxDataMetadata:inputAuxDataMetadata,inputAperture:inputAperture,inputNosePositions:inputNosePositions,inputLumaNoiseScale:inputLumaNoiseScale,inputScaleFactor:inputScaleFactor,inputFocusRect:inputFocusRect){ 
			return self.apply(filter:filter)
		}
		return nil
	}
}
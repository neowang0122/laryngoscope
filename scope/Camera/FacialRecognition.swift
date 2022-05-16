//
//  FacialRecognition.swift
//  scope
//
//  Created by Neo Wang on 4/25/22.
//

import Foundation


//
//let faceDetectionRequest = VNDetectFaceRectanglesRequest(completionHandler: { (request, error) in
//    
//    if error != nil {
//        print("FaceDetection error: \(String(describing: error)).")
//    }
//    
//    guard let faceDetectionRequest = request as? VNDetectFaceRectanglesRequest,
//        let results = faceDetectionRequest.results as? [VNFaceObservation] else {
//            return
//    }
//    DispatchQueue.main.async {
//        // Add the observations to the tracking list
//        for observation in results {
//            let faceTrackingRequest = VNTrackObjectRequest(detectedObjectObservation: observation)
//            requests.append(faceTrackingRequest)
//        }
//        self.trackingRequests = requests
//    }
//})

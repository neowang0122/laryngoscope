//import UIKit
//import AVKit
//import AVFoundation
//import Photos
//
//class Camera: UIViewController {
//    
//    private var spinner = UIActivityIndicatorView()
//    private let captureSession = AVCaptureSession()
//    
//    var windowOrientation: UIInterfaceOrientation
//    {
//        return view.window?.windowScene?.interfaceOrientation ?? .unknown
//    }
//    
//    let locationManager = CLLocationManager()
//    
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        
//        // Disable the UI. Enable the UI Later, iff the session starts running
//        // TODO
//        
//        
//        // Set up the video preview view
//        previewView.session = session
//        
//        // Request location authorization so photos and videos can be tagged with their location
//        if locationManager.authorizationStatus == .notDetermined
//        {
//            locationManager.requestWhenInUseAuthorization()
//        }
//        
//        /*
//         Check the video authorization status. Video and audio are both required.
//         */
//        switch AVCaptureDevice.authorizationStatus(for: .video)
//        {
//        case .authorized:
//            break
//        case .notDetermined:
//            /*
//             The user has not yet been presented with the option to grant video access. Suspend the session queue to delay session setup until the access request has completed. */
//        
//        default:
//            // The user has previously denied access.
//            setup
//        }
//        
//        
//    }
//    
//    @IBAction func startCapture(_ sender: Any) {
//        
//        
//    }
//    //    /**
////     Accept input data from capture devices like the camera and microphone
////     */
////    private let session = AVCaptureSession()
////
////    session.beginConfiguration()
////    let videoDevice = AVCaptureDevice.default(.builtInTrueDepthCamera,
////                                              for: .video,
////                                              position: .unspecified )
////    guard
////        let videoDeviceInput = try? AVCaptureDeviceInput(device: videoDevice!),
////            session.canAddInput(videoDeviceInput)
////            else { return }
////    session.addInput(videoDeviceInput)
////
//    
//    
//}
//

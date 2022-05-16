import UIKit
import Photos

class History: UITableViewController
{
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var LibraryButton: UIBarButtonItem!
    
    var imagePickerController = UIImagePickerController()
    
    
    /**
     When tapped the library button
     */
//    @IBAction func tappedLibraryButton(_ sender: Any)
    @IBAction func tappedLibraryButton(_ sender: Any) {
        self.imagePickerController.sourceType = .photoLibrary
        
        // Use a filter of the app name to limit the candidates to videos
//        self.imagePickerController.mediaTypes = ["public.movie"]
        
        
        self.present(self.imagePickerController, animated: true, completion: nil)
    }
    
    
    
    /**
     Standard codes for checking premission.
     */
    func checkPermission()
    {
        if PHPhotoLibrary.authorizationStatus() != PHAuthorizationStatus.authorized
        {
            PHPhotoLibrary.requestAuthorization({ (status: PHAuthorizationStatus) -> Void in () })
        }

        if PHPhotoLibrary.authorizationStatus() == PHAuthorizationStatus.authorized
        {

        }
        else
        {
            PHPhotoLibrary
                .requestAuthorization(requestAuthorizationHandler)
        }
    }

    /**
     helper function for checking the permission
     */
    func requestAuthorizationHandler( status: PHAuthorizationStatus)
    {
        if PHPhotoLibrary.authorizationStatus() == PHAuthorizationStatus.authorized
        {
            print("Access granted to use photo library.")
        }
        else
        {
            print("Did not get the access to use photo library.")
        }
    }

}


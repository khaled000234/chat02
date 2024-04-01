import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerController extends GetxController{
   final ImagePicker picker = ImagePicker();
   Future<String >pickerImage()async{
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image !=null) {
     return image.path;
    }else{
     return "";
    }
   
   }
}

// final ImagePicker picker = ImagePicker();
// // Pick an image.
// 
// // Capture a photo.
// final XFile? photo = await picker.pickImage(source: ImageSource.camera);
// // Pick a video.

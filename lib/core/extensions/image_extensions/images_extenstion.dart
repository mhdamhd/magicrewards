import 'dart:io';

import 'package:image_picker/image_picker.dart';

extension ImagePickerExtenstion on XFile {
  File get toFile => File(path);
}

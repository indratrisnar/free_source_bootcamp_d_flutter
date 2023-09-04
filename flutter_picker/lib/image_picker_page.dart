import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerPage extends StatelessWidget {
  const ImagePickerPage({super.key});

  pickImage(ImageSource source) async {
    XFile? xFile = await ImagePicker().pickImage(source: source);
    if (xFile == null) {
      print('cancel pick');
      return;
    }

    print('''
Mime type: ${xFile.mimeType}
Name: ${xFile.name}
Path: ${xFile.path}
Last modified: ${(await xFile.lastModified()).toIso8601String()}
''');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Picker'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ElevatedButton(
            onPressed: () {
              pickImage(ImageSource.gallery);
            },
            child: const Text('Gallery'),
          ),
          ElevatedButton(
            onPressed: () {
              pickImage(ImageSource.camera);
            },
            child: const Text('Camera'),
          ),
        ],
      ),
    );
  }
}

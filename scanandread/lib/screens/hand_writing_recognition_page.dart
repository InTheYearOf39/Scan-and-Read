import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:image_picker/image_picker.dart';

class HandwritingRecognitionPage extends StatefulWidget {
  @override
  _HandwritingRecognitionPageState createState() => _HandwritingRecognitionPageState();
}

class _HandwritingRecognitionPageState extends State<HandwritingRecognitionPage> {
  late File _imageFile;
  List<String> _recognizedText = [];

  Future<void> _getImageAndRecognizeText() async {
    // Create an instance of the ImagePicker class
    final imagePicker = ImagePicker();

    // Use the instance's pickImage method to allow the user to select or take a photo of their handwriting
    PickedFile? pickedImage = await imagePicker.getImage(source: ImageSource.camera);

    if (pickedImage == null) {
      return;
    }

    // Convert the PickedFile object to a File object
    File image = File(pickedImage.path);

    // Load the handwriting recognition model from Google ML Kit
    final textRecognizer = GoogleMlKit.vision.textRecognizer();
    final inputImage = InputImage.fromFile(image);

    // Process the input image and extract recognized text
    final RecognizedText recognisedText = await textRecognizer.processImage(inputImage);

    // Extract recognized text from the RecognisedText object
    List<String> recognizedText = recognisedText.text.split('\n');

    // Update the UI with the recognized text
    setState(() {
      _imageFile = image;
      _recognizedText = recognizedText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Handwriting Recognition'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: _imageFile != null
                  ? Image.file(_imageFile)
                  : Text('No image selected'),
            ),
          ),
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _recognizedText.map((text) => Text(text)).toList(),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _getImageAndRecognizeText,
        tooltip: 'Select Image',
        child: Icon(Icons.camera_alt),
      ),
    );
  }
}

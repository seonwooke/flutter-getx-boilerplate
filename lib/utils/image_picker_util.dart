import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerUtil {
  ImagePickerUtil._internal();
  static final ImagePickerUtil _instance = ImagePickerUtil._internal();
  factory ImagePickerUtil() => _instance;

  /// 기기의 이미지 가져오기(1장)
  Future<File?> pickImageFromDevice() async {
    try {
      ImagePicker picker = ImagePicker();
      XFile? image = await picker.pickImage(
        source: ImageSource.gallery,
        imageQuality: 100,
      );
      return image == null ? null : File(image.path);
    } on PlatformException catch (_) {
      rethrow;
    }
  }

  /// 이미지 업로드하기
  Future<void> requestImageUpload({
    required String directoryName,
    required String fileName,
    required File selectedImage,
  }) async {
    File file = File(selectedImage.path);
    await FirebaseStorage.instance
        .ref()
        .child(directoryName)
        .child(fileName)
        .putFile(file);
  }

  /// 저장된 이미지 URL 가져오기
  Future<String> requestImageUrl({
    required String directoryName,
    required String fileName,
  }) async {
    String downloadURL = await FirebaseStorage.instance
        .ref()
        .child(directoryName)
        .child(fileName)
        .getDownloadURL();

    return downloadURL;
  }
}

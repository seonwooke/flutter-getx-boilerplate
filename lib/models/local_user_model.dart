import 'dart:convert';

class LocalUserModel {
  final String? uid;
  final bool? isLogged;

  LocalUserModel({required this.uid, required this.isLogged});

  Map<String, dynamic> toMap() =>
      <String, dynamic>{'uid': uid, 'isLogged': isLogged};

  factory LocalUserModel.fromMap(Map<String, dynamic> map) {
    return LocalUserModel(
      uid: map['uid'] ?? 0,
      isLogged: map['isLogged'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory LocalUserModel.fromJson(String source) =>
      LocalUserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}

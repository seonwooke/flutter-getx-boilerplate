import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../project_name.dart';

/// [SharedPreferencesStorage]
///
/// SharedPreferences 이용한 Local Storage.
/// - index 0 : LocalUserModel
class SharedPreferencesStorage {
  static late final SharedPreferences storage;

  static Future<void> create() async =>
      storage = await SharedPreferences.getInstance();

  // LocalUserModel Section : 유저 모델 가져오기
  static Future<LocalUserModel?> getLocalUserModel() async {
    try {
      final localUserModelJson = storage.get('0') as String?;
      if (localUserModelJson == null) {
        return null;
      } else {
        final localUserModel = LocalUserModel.fromJson(localUserModelJson);
        return localUserModel;
      }
    } catch (error) {
      debugPrint('[🚨 SharedPreferencesStorage : getLocalUserModel] $error');
      throw ();
    }
  }

  // LocalUserModel Section : 유저 모델 저장하기
  static Future<void> setLocalUserModel(String uid) async {
    try {
      final localUserModel = LocalUserModel(uid: uid, isLogged: false);
      await storage.setString('0', localUserModel.toJson());
    } catch (error) {
      debugPrint('[🚨 SharedPreferencesStorage : setLocalUserModel] $error');
    }
  }

  // LocalUserModel Section : 유저 모델 삭제하기
  static Future<void> removeLocalUserModel(String uid) async {
    try {
      await storage.remove('0');
    } catch (error) {
      debugPrint('[🚨 SharedPreferencesStorage : removeLocalUserModel] $error');
    }
  }

  // LocalUserModel Section : 유저 로그인
  static Future<void> signIn(String uid) async {
    try {
      final localUserModel = LocalUserModel(uid: uid, isLogged: true);
      await storage.setString('0', localUserModel.toJson());
    } catch (error) {
      debugPrint('[🚨 SharedPreferencesStorage : signIn] $error');
    }
  }

  // LocalUserModel Section : 유저 로그아웃
  static Future<void> signOut(String uid) async {
    try {
      final localUserModel = LocalUserModel(uid: uid, isLogged: false);
      await storage.setString('0', localUserModel.toJson());
    } catch (error) {
      debugPrint('[🚨 SharedPreferencesStorage : signOut] $error');
    }
  }
}

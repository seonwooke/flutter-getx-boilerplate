import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../project_name.dart';

class LocalizationUtil extends Translations {
  /// 디바이스 언어가 지원하지 않는 언어일 때는 한국어 설정
  static const defaultLocale = Locale('ko', 'KR');

  /// 지원하는 언어 - 아래 locales와 순서가 같아야 됨
  static final langs = [
    '한국어',
    'English',
  ];

  /// 지원하는 locales - 위의 langs와 순서가 같아야 됨
  static final locales = [
    const Locale('ko', 'KR'),
    const Locale('en', 'US'),
  ];

  /// key와 언어 리턴 - constants/lang 디렉토리의 언어 파일로 번역
  @override
  Map<String, Map<String, String>> get keys => {
        'ko_KR': koKR, // lang/ko_kr.dart
        'en_US': enUS, // lang/en_us.dart
      };

  /// 디바이스 language로 앱 locale 변경
  void changeLocale(Locale locale) => Get.updateLocale(locale);
}

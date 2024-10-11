enum LoginTypeEnum {
  EMAIL(label: 'email'),
  KAKAO(label: 'kakao'),
  NAVER(label: 'naver'),
  GOOGLE(label: 'google'),
  APPLE(label: 'apple');

  const LoginTypeEnum({required this.label});

  final String label;
}

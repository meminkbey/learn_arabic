// A single Arabic letter with the basic info we need to teach it.
class Letter {
  final int id;
  final String arabic;
  final String name;
  final bool connectsToNext;

  const Letter({
    required this.id,
    required this.arabic,
    required this.name,
    this.connectsToNext = true,
  });

  // Tatweel: an extension character that makes the font draw the joined shape
  static const String _tatweel = '\u0640';

  String get isolated => arabic;

  String get initial => connectsToNext ? '$arabic$_tatweel' : arabic;

  String get medial =>
      connectsToNext ? '$_tatweel$arabic$_tatweel' : '$_tatweel$arabic';

  String get finalForm => '$_tatweel$arabic';
}

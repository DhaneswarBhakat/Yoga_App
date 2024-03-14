class YogaModel{
  static String IDName = "ID";
  static String YogaName = "YogaName";
  static String SecondsOrNot = "SecondsOrNot";
  static String ImageName = "ImageName";
}


class Yoga{
  final int? id;
  final bool Seconds;
  final String YogaTitle;
  final String YogaImgUrl;


  const Yoga({
    this.id,
    required this.Seconds,
    required this.YogaImgUrl,
    required this.YogaTitle
});

  Yoga copy({
   int? id,
    bool? YogaTitle,
    String? YogaTitle,
    String? YogaImgUrl
}){

  }
}
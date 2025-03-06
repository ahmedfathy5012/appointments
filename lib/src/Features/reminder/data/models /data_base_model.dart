abstract class DataBaseModel {
  final int id;

  Map<String, dynamic> toMap();
  static DataBaseModel fromMap(Map<String, dynamic> map) {
    // TODO: implement fromMap
    throw UnimplementedError();
  }

  const DataBaseModel({
    required this.id,
  });
}
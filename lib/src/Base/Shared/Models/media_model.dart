
import 'package:mobile/src/Base/Shared/Entities/media.dart';

class MediaModel extends MediaE {
  MediaModel({
    super.id,
    super.url,
    super.type,
});

  factory MediaModel.fromJson(Map<String, dynamic> json) => MediaModel(
    id: json["id"],
    url: json["url"],
    type: json["type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "url": url,
    "type": type,
  };

  MediaModel copyWith({
    int? id,
    String? url,
    int? type,
  }) =>
      MediaModel(
        id: id ?? this.id,
        url: url ?? this.url,
        type: type ?? this.type,
      );

  @override
  bool get stringify => true;
}
import 'package:equatable/equatable.dart';
class MediaE with EquatableMixin {
  int? id;
  String? url;
  int? type;

  MediaE({
    this.id,
    this.url,
    this.type,
  });

  @override
  List<Object?> get props => [
    id,
    url,
    type,
  ];

}

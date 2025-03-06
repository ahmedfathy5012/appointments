// import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
//
// class User {
//   int? id;
//   String? name;
//   String? phone;
//   String? email;
//   String? apiToken;
//   bool? isPhoneVerified;
//   String? image;
//
// //<editor-fold desc="Data Methods">
//   User({
//     required this.id,
//     required this.name,
//     required this.phone,
//     required this.email,
//     required this.apiToken,
//     required this.isPhoneVerified,
//     required this.image,
//   });
//
//   @override
//   String toString() {
//     return 'User{id: $id, name: $name, phone: $phone, email: $email, apiToken: $apiToken, isPhoneVerified: $isPhoneVerified, image: $image}';
//   }
//
//   Map<String, dynamic> toMap() {
//     return {
//       'id': id,
//       'name': name ?? "",
//       'phone': phone ?? "",
//       'email': email ?? "",
//       'is_phone_verified': isPhoneVerified ?? 0,
//       'image': image
//     };
//   }
//
//   User.fromMap(Map<String, dynamic> map) {
//     printModel(
//         name: "user",
//         parsing: () {
//           id = map['id'] ?? 0;
//           printDM("User id => $id");
//           name = map['name'] ?? '';
//           printDM("User name => $name");
//           phone = map['phone'] ?? '';
//           printDM("User phone => $phone");
//           email = map['email'] ?? '';
//           printDM("User email => $email");
//
//           apiToken = map['api_token'] ?? '';
//           printDM("User apiToken => $apiToken");
//
//           isPhoneVerified = map['phone_verify_status'] ?? false;
//           printDM("User phoneVerify => $isPhoneVerified");
//
//           image = map['image'] ?? '';
//           printDM("User image => $image");
//         });
//   }
// //</editor-fold>
// }

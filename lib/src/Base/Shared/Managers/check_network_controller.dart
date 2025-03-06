//  import 'package:mobile/src/Base/Core/Services/NetworkConnection/network_service.dart';
// import 'package:mobile/src/Base/Core/Services/helper.dart';
// import 'package:mobile/src/Base/Core/Utils/SnackUtils/src/app_snacks.dart';
// import 'package:mobile/src/Base/Core/Utils/SnackUtils/src/Constants/snack_constants.dart';
// import 'package:mobile/src/Base/Core/Utils/general_utils.dart';
//  import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:mobile/src/Base/Super/Controllers/Resources/get/get_controller_interface.dart';
//
//
// class CheckNetworkController extends GetControllerInterface {
//   Map _source = {ConnectivityResult.none: false};
//   final NetworkConnectionService _networkConnectivity = Helper.connectivity;
//   String _connectionString = '';
//   @override
//   void onInit() {
//     super.onInit();
//     _networkConnectivity.initialise();
//     _networkConnectivity.myStream.listen((source) {
//       _source = source;
//       printDM('source $_source');
//       // 1.
//       switch (_source.keys.toList()[0]) {
//         case ConnectivityResult.mobile:
//           _connectionString =
//           _source.values.toList()[0] ? 'Mobile: Online' : 'Mobile: Offline';
//           break;
//         case ConnectivityResult.wifi:
//           _connectionString =
//           _source.values.toList()[0] ? 'WiFi: Online' : 'WiFi: Offline';
//           break;
//         case ConnectivityResult.none:
//         default:
//           _connectionString = 'Offline';
//       }
//       // 2.
//       update();
//       // 3.
//       AppSnacks().showSnack(title: _connectionString, state: UtilState. none);
//     });
//   }
//   @override
//   void dispose() {
//     _networkConnectivity.disposeStream();
//     // TODO: implement dispose
//     super.dispose();
//   }
// }

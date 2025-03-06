import 'package:mobile/src/Base/Core/Services/QR/qr_enum.dart';

abstract class QrInterface {
    Future<String> scanQr (QrScanType type);
}

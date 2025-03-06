import 'package:mobile/src/Base/Core/Services/Storage/src/storage_constants.dart';
import 'package:mobile/src/Base/Core/Services/storage/storage_service.dart';

class GuestCache {
  GuestCache._();

  static final instance = GuestCache._();

  final _guestStorage = StorageService<bool>();

  setGuest() {
    _guestStorage.save(stgGuest, value: true);
  }

  getGuest() {
    return _guestStorage.read(stgGuest, defaultValue: false);
  }

  setNotGuest() {
    _guestStorage.delete(stgGuest);
  }
}

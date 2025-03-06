import '../Interfaces/dynamic_link_type.dart';
import '../Model/notification_message.dart';

class GeneralDynamicLink extends DynamicLinkType {
  GeneralDynamicLink._();

  static final GeneralDynamicLink instance = GeneralDynamicLink._();

  @override
  void onDynamicLinkRedirect(String decodedData) {
    //! this is an example of how to use dynamic link
    // final model = AdvertiseModel.fromMap(decodedData);
    // Snap.offAll(const BasePage());
    //? page which will be opened when user click on dynamic link
    // Snap.to(
    //   AdvertisementDetailsPage(
    //     advertise: model,
    //     isFromDynamicLink: true,
    //   ),
    // );
  }
}

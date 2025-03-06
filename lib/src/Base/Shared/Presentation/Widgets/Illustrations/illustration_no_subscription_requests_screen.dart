  part of 'imports_illustrations.dart';


class IllustrationNoSubscriptionRequestsScreen extends StatelessWidget {

  const IllustrationNoSubscriptionRequestsScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPageBuilder(
      title: "illustration_no_subscription_courses",
      body: "illustration_no_subscription_courses_details",
      imageUrl:Assets.icons.errorIllustration,
      showRedirectIcon: false,
    );
  }
}

part of  'imports_illustrations.dart';

class IllustrationNoConnectionScreen extends StatelessWidget {

  final VoidCallback? onRedirect;

  const IllustrationNoConnectionScreen({Key? key, this.onRedirect,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPageBuilder(
      title: "illustration_no_connection",
      body: "",
       imageUrl: Assets.icons.noConnectionIllustration,
      showRedirectIcon: false,
      onRedirect: onRedirect
    );
  }
}

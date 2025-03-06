part of  'imports_illustrations.dart';

class IllustrationUnKnownErrorScreen extends StatelessWidget {

  final VoidCallback? onRedirect;

  const IllustrationUnKnownErrorScreen({Key? key, this.onRedirect}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPageBuilder(
      title: "illustration_unknown".toTr(),
      body: "".toTr(),
      imageUrl:Assets.icons.errorIllustration,
      onRedirect: onRedirect,
    );
  }
}

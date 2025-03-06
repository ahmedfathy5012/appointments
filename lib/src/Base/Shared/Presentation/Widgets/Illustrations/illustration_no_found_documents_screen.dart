part of 'imports_illustrations.dart';

class IllustrationNoFoundDocumentsScreen extends StatelessWidget {
  const IllustrationNoFoundDocumentsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPageBuilder(
      title: "not_found_documents",
      body: "",
      imageUrl: Assets.images.noChats,
      showRedirectIcon: false,
    );
  }
}

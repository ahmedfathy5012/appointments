part of 'imports_illustrations.dart';

class IllustrationNoFoundPostsScreen extends StatelessWidget {
  const IllustrationNoFoundPostsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPageBuilder(
      title: "not_found_posts",
      body: "",
      imageUrl: Assets.images.noChats,
      showRedirectIcon: false,
    );
  }
}

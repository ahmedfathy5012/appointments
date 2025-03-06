  part of 'imports_illustrations.dart';


class IllustrationNoFoundChatsScreen extends StatelessWidget {

  const IllustrationNoFoundChatsScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IllustrationPageBuilder(
      title: "not_found_chats",
      body: "",
      imageUrl: Assets.images.noChats,
      showRedirectIcon: false,
    );
  }
}

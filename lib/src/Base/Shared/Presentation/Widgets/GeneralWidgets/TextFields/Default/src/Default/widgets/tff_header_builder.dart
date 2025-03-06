part of 'imports_widgets_tff.dart';

class TFFHeaderBuilder extends StatelessWidget {
  final TFFTextImp header;

  const TFFHeaderBuilder({
    Key? key,
    required this.header,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: header is TFFHeader,
      onBuild: Padding(
        padding: EdgeInsets.only(bottom: 7.toH()),
        child: Text(
            (header.title??'').toTr(),
          overflow: TextOverflow.ellipsis,
          style: header.getTextStyle
        ),
      ),
      onFeedBack: 0.ESH(),
    );
  }
}

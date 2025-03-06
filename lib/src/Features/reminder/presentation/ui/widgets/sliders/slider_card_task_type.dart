import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Features/reminder/core/enums/task_type.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/cards/card_task_type.dart';

class SliderCardTaskType extends StatelessWidget {
  final List<TaskType> types;
  final int selectedIndex;
  final Function(int) onTap;
  final ScrollController? scrollController;
  const SliderCardTaskType({Key? key, required this.types,this.scrollController, required this.selectedIndex, required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.toH(),
      child: ListView.separated(
        itemBuilder: (context, index) => Padding(
          padding:  EdgeInsets.only(
              right: index == 0 ? 0.toW():0
          ),
          child:  GestureDetector(
            onTap: (){
              if(onTap!=null){
                onTap(index);
              }
            },
            child: CardTaskType(
              type: types[index],
              isActive: index == selectedIndex,
            ),
          ),
        ),
        separatorBuilder:(context, index) => 8.ESW(),
        itemCount: types.length,
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}

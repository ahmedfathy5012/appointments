import 'package:flutter/material.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Features/reminder/data/models%20/task_model.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/cards/card_task.dart';

class ListCardTask extends StatelessWidget {
  final List<TaskModel> tasks;
  final ScrollController? scrollController;
  final bool shrinkWrap;
  final ScrollPhysics? physics;
  final bool isPadding;
  final Function(int) onDelete;
  final Function(TaskModel) onUpdate;
  const ListCardTask({Key? key, required this.tasks,this.scrollController,this.shrinkWrap=false,this.physics,this.isPadding = true, required this.onDelete, required this.onUpdate}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => Padding(
        padding: isPadding ?  EdgeInsets.symmetric(horizontal: 16.toW()) : EdgeInsets.zero,
        child:  CardTask(
          task: tasks[index],
          onDelete: (){
            onDelete(tasks[index].id);
          },
          onUpdate: (){
            onUpdate(tasks[index]);
          },
        ),
      ),
      separatorBuilder:(context, index) => 16.ESH(),
      itemCount: tasks.length,
      controller: scrollController,
      physics: physics??const BouncingScrollPhysics(),
      shrinkWrap: shrinkWrap,
    );
  }
}

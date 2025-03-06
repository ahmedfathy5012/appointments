import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/DataBuilder/imports_data_builder.dart';
import 'package:mobile/src/Features/reminder/data/models%20/task_model.dart';
import 'package:mobile/src/Features/reminder/presentation/controllers/fetch_tasks_controller.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/pages/add_task_page.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/home_floating_button.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/lists/list_card_task.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/not_found_illustration.dart';

import '../widgets/app_bars/home_app_bar.dart' show HomeAppBar;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FetchTasksController());
    return Scaffold(
      floatingActionButton: HomeFloatingButton(),
      appBar: HomeAppBar(),
      body:
      GetBuilder<FetchTasksController>(
          builder:(cnt) => DataStatusBuilder(
              status: cnt.state,
              onDoneBuild: cnt.stateNotSuccess?
                  Center():
              (cnt.state.data??[]).isEmpty?
                  IllustrationNotFound():
              Padding(
                padding:  EdgeInsets.only(
                  top: 16.toH(),
                ),
                child: ListCardTask(
                  tasks: cnt.data,
                  isPadding: false,
                  onDelete: (value){
                    cnt.removeTask(taskID: value);
                  },
                  onUpdate: (value){
                    Get.to(AddTaskPage(task: value));
                  },
                ),
              )
          )
      ),
    );
  }
}

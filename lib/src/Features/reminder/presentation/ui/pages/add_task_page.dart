import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/screen_spaces_extension.dart';
import 'package:mobile/src/Base/Core/Utils/Extensions/translate_extension.dart';
import 'package:mobile/src/Base/Core/Utils/Validation/Implementation/DefaultValidator/default_validator.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Buttons/Basic/button_default.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/Sheets/sheet_time_picker.dart';
import 'package:mobile/src/Base/Shared/Presentation/Widgets/GeneralWidgets/TextFields/Default/default_text_field.dart';
import 'package:mobile/src/Features/reminder/data/models%20/task_model.dart';
import 'package:mobile/src/Features/reminder/presentation/controllers/add_task_controller.dart';
import 'package:mobile/src/Features/reminder/presentation/ui/widgets/add_task_header.dart';

import '../../../../../Base/Core/Constants/Strings/assets.dart';

class AddTaskPage extends StatelessWidget {
  final TaskModel? task;
  const AddTaskPage({super.key, this.task});

  @override
  Widget build(BuildContext context) {
    var node = FocusScope.of(context);
    Get.put(AddTaskController(task: task));
    return Scaffold(
      body: GetBuilder<AddTaskController>(
        builder: (cnt) => Form(
          key: cnt.globalKey,
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    AddTaskHeader(),
                    34.ESH(),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.toW()),
                      child: Column(
                        children: [
                          TextFieldDefault(
                            hint: TFFHint(
                              title: 'the_name'.toTr(),
                            ),
                            prefix: PrefixWithIconImage(
                              iconImage: Assets.icons.clock,
                            ),
                            controller: cnt.nameController,
                            validation: DefaultValidator.instance.validate,
                            onComplete: () {
                              node.nextFocus();
                            },
                          ),
                          16.ESH(),
                          GestureDetector(
                            onTap: (){
                              print('object');
                              Get.bottomSheet(SheetTimePicker(
                                onConfirm: (DateTime? time) {
                                  cnt.setTime("${time!.hour}:${time.minute}" );
                                },
                                initial: DateTime.now(),
                              )
                              );
                            },
                            child: TextFieldDefault(
                              hint: TFFHint(
                                title: 'the_time'.toTr(),
                              ),
                              enable: false,
                              prefix: PrefixWithIconImage(
                                iconImage: Assets.icons.clock,
                              ),
                              controller: cnt.timeController,
                              validation: DefaultValidator.instance.validate,
                              onComplete: () {
                                node.unfocus();
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(
                  vertical: 16.toW(),
                  horizontal: 16.toH(),
                ),
                child: ButtonDefault(
                  title: task!=null?'edit':'save',
                  onTap: (){
                    cnt.submit();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

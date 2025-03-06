import 'package:mobile/src/Base/Super/Controllers/Resources/get/get_controller_interface.dart';
import 'package:flutter/widgets.dart';

abstract class PaginationController<T> extends GetControllerInterface<T> {
  bool paginationLoading = false;

  late ScrollController scrollController;

  int get fetchCurrentPage {
    if (state.pagination != null) {
      return (state.pagination!.current ?? 0) + 1;
    } else {
      return 0;
    }
  }

  Future<void> setFetchFunction();

  void scrollListen() {
    scrollController.addListener(() async {
      var nextPageTrigger = 0.8 * scrollController.position.maxScrollExtent;
      if (scrollController.position.pixels > nextPageTrigger) {
        if (!paginationLoading) {
          if (state.pagination != null) {
            if ((state.pagination!.last ?? 0) >
                (state.pagination!.current ?? 0)) {
              paginationLoading = true;
              update();
              await setFetchFunction();
              paginationLoading = false;
              update();
            }
          }
        }
      }
    });
  }

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollListen();
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core.dart';

class ListPictureView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<ListPictureController>();

    return Scaffold(
      appBar: AppBar(title: Text("List Photo")),
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return LoadingWidget();
          }

          return ListView.builder(
            itemCount: controller.pictures.length,
            itemBuilder: (context, index) {
              final picture = controller.pictures[index];
              return ListContentWidget(
                picture: picture,
                onTap: () {
                  Get.toNamed(Routes.DETAIL, arguments: {'id': picture['id'].toString()});
                },
              );
            },
          );
        },
      ),
    );
  }
}

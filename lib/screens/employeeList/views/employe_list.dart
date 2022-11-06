import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shivam_task/routes/app_pages.dart';

import 'package:shivam_task/utility/appTheme/app_theme.dart';
import 'package:shivam_task/utility/extention/on_tap_ext.dart';
import 'package:shivam_task/utility/size_config.dart';
import 'package:shivam_task/utility/widgets/customText.dart';
import 'package:shivam_task/utility/widgets/search_bar.dart';

import '../controllers/controller.dart';

class EmployeeListScreen extends GetView<EmployeeListController> {
  EmployeeListScreen({Key? key}) : super(key: key);

  String imgLink =
      'https://blog.vantagecircle.com/content/images/2021/01/Employee-Management-Meaning-Importance-Tips-Tools---More.png';

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee List'),
      ),
      body: Column(
        children: [


          SearchBar(
            controller: TextEditingController(),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 10,
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemBuilder: (BuildContext context, int index) {
                return employeeList();
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
          ),
        ],
      ).paddingAll(16),
    );
  }

  Widget employeeList() {
    return Row(crossAxisAlignment: CrossAxisAlignment.center,children: [
      Container(
          color: Colors.grey,
          height: 84,
          width: 100,
          child: CachedNetworkImage(
            imageUrl: imgLink,
            height: 84,
            fit: BoxFit.cover,
            width: 100,
          )),
    const   SizedBox(width: 8,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(text: 'empName', color: AppTheme.primaryColor,size: 18,fontWeight: FontWeight.w600,),
          CustomText(
            text: 'xyz@gmail.com',
            color: AppTheme.primaryBlack,
            size: 14,
          ),
        ],
      ),
    ]).onClick(() => Get.toNamed(Routes.EMPLOYEE_DETAIL));
  }
}

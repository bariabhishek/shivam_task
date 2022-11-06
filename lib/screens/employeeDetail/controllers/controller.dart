import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../employeeList/views/employe_list.dart';


class EmployeeDetailController extends GetxController{
  RxInt selectedIndex = 0.obs;

  List items = [
    EmployeeListScreen(),
    Container(),
  ];

  void onItemTapped(int index){
    selectedIndex.value = index;
  }

}
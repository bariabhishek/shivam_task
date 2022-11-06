import 'package:flutter/material.dart';
import 'package:shivam_task/utility/widgets/customText.dart';

class EmployeeCheckIn extends StatelessWidget {
  const EmployeeCheckIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(

        padding: const EdgeInsets.all(16),
        itemCount: 10,
        itemBuilder: (context,index){


      return checkInTile();
    }, separatorBuilder: (BuildContext context, int index) {

          return const Divider(height: 16,);
    },);
  }


  Widget checkInTile(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _detailTile(title: "Check In ", value: "12-2-3403"),
        const SizedBox(height: 8,),
        _detailTile(title: "Location", value: "Rancho Cucamonga"),
        const SizedBox(height: 8,),
        CustomText(text: 'Purpose: ',  size: 20,),
        const SizedBox(height: 8,),
        CustomText(text: 'transaction at Turcotte - Dickinson using card ending with ***0555 for ZWL 600.08 in account ***59605509',fontWeight: FontWeight.w500,size: 14,),
      ],
    );
  }

  Widget _detailTile({required String title, required String value}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(
          text: '$title: ',
          size: 20,
        ),
        CustomText(
          text: value,
        )
      ],
    );
  }
}

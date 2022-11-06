import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shivam_task/utility/size_config.dart';
import 'package:shivam_task/utility/widgets/customText.dart';

class EmpDetails extends StatelessWidget {
  EmpDetails({Key? key}) : super(key: key);
  String imgLink =
      'https://blog.vantagecircle.com/content/images/2021/01/Employee-Management-Meaning-Importance-Tips-Tools---More.png';

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          CachedNetworkImage(
            imageUrl: imgLink,
            height: 200,
          ),
          const SizedBox(
            height: 16,
          ),
          _detailTile(title: "Name", value: "Everett Konopelski"),
          const Divider(
            height: 16,
            thickness: 1,
          ),
          _detailTile(title: "Email", value: "Taya_Doyle@yahoo.com"),
          const Divider(
            height: 16,
            thickness: 1,
          ),
          _detailTile(title: "Phone", value: "(790) 287-1649"),
          const Divider(
            height: 16,
            thickness: 1,
          ),
          _detailTile(title: "Birthday", value: "Employee"),
          const Divider(
            height: 16,
            thickness: 1,
          ),
          _detailTile(title: "Country", value: "Pitcairn Islands"),
          const Divider(
            height: 16,
            thickness: 1,
          ),
          _detailTile(title: "Department", value: "Employee"),
          const Divider(
            height: 16,
            thickness: 1,
          ),
        ],
      ),
    );
  }

  Widget _detailTile({required String title, required String value}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomText(
            text: title+':',
            size: 20,
          ),
          CustomText(
            text: value,
          )
        ],
      ),
    );
  }
}

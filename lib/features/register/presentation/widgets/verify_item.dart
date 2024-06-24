import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:flutter/material.dart';

class VerifyItem extends StatelessWidget {
  const VerifyItem({super.key, required this.icon, required this.title, required this.subTitle,  this.isActive=false});
  final IconData icon;
  final String title;
  final String subTitle;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: AnimatedContainer(
        duration:const Duration(milliseconds: 500),
        padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
        width: double.infinity,
        height: 80,
        decoration: BoxDecoration(border: Border.all(width: 1,color:isActive?kPrimaryColor: Colors.grey),borderRadius: BorderRadius.circular(8)),
        child: Row(children: [
          Container(height: 60,width: 60
            ,decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(icon,color:isActive?kPrimaryColor:Colors.grey,),
          ),
         const SizedBox(width: 20,),
          Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
            Text(title,style: Theme.of(context).textTheme.headline4),
            Text(subTitle,style:Theme.of(context).textTheme.headline6),
      
      
          ],)
        ],),
      ),
    );
  }
}
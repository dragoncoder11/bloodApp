
import 'package:bloody/features/register/presentation/widgets/verify_item.dart';
import 'package:flutter/material.dart';
  List<VerifyItem> verifyList=[
    const VerifyItem(icon: Icons.email, title: 'My email address', subTitle: 'Verify with your email'),
    const VerifyItem(icon: Icons.phone, title: 'Phone Number', subTitle: 'Verify with your phone number'),
  ];
    int selectedIndex=0;
class VerifyListView extends StatefulWidget {
   VerifyListView({
    super.key,
  });

  @override
  State<VerifyListView> createState() => _VerifyListViewState();
}

class _VerifyListViewState extends State<VerifyListView> {


  @override
  Widget build(BuildContext context) {
    return Expanded(
     child: ListView.builder(itemCount: verifyList.length,itemBuilder: (context,index){
     return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex=index;
        });

      },
       child: VerifyItem(icon: verifyList[index].icon, title: verifyList[index].title, subTitle: verifyList[index].subTitle,
       isActive: selectedIndex==index,),
     );
     
             }),
             );
             
  }
}
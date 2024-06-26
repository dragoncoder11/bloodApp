import 'package:bloody/core/utils/constants.dart';
import 'package:bloody/core/utils/custom_button.dart';
import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/home/presentation/manager/cubit/app_themes_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsBody extends StatefulWidget {
  const SettingsBody({super.key});
  static const id='settings';

  @override
  State<SettingsBody> createState() => _SettingsBodyState();
}

class _SettingsBodyState extends State<SettingsBody> {
  @override
  Widget build(BuildContext context) {
        bool x=BlocProvider.of<AppThemesCubit>(context).state==ThemeData.light();
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          Expanded(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const SizedBox(height: 40,),
              Text('App settings',style:Theme.of(context).textTheme.headline2),
              const SizedBox(height: 20,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text('Dark Mode',style:Theme.of(context).textTheme.headline4),
 Switch(
              inactiveThumbColor: Colors.grey,
              activeColor: Colors.red,
                value:  x?true:false ,
                onChanged: (value) {
                  setState(() {
                    x = value;
                  });
                  BlocProvider.of<AppThemesCubit>(context).changeTheme();
                  
                }),            
              ],),
                          const SizedBox(height: 12,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text('Language',style: Theme.of(context).textTheme.headline4),
                Row(children: [
                  Text('English',style: Theme.of(context).textTheme.headline5),
                  const Icon(Icons.arrow_forward_ios,color: kTextGreyColor,),
                ],),
              ],),
                            const SizedBox(height: 18,),
               /*   Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                Text('Country',style: Theme.of(context).textTheme.headline3),
                Row(children: [
                  Text('Egypt',style:Theme.of(context).textTheme.headline5),
                  const Icon(Icons.arrow_forward_ios,color: kTextGreyColor,),
                ],),
              ],) */
             
              ],
            ),
          ),
        ],
      ),
    );
  }
}
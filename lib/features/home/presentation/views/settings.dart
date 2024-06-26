import 'package:bloody/core/utils/styles.dart';
import 'package:bloody/features/home/presentation/widgets/settings_body.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  static const id = 'srttings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          'App Setting',
          style: Styles.styles18Bold,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 12),
            child: Text('save',style:Styles.style16SemiBold.copyWith(color: Colors.red),),
          )
        ],
      ),
      body: const SettingsBody(),
    );
  }
}

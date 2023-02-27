import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../project/routes/app_route_constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(
              child: Center(
            child: Text('Home'),
          )),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.aboutRouteName);
              },
              child: Text('About')),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.profileRouteName);
              },
              child: Text('Profile')),
          ElevatedButton(
              onPressed: () {
                GoRouter.of(context)
                    .pushNamed(MyAppRouteConstants.contactUsRouteName);
              },
              child: Text('Contact Us')),
        ],
      ),
    );
  }
}

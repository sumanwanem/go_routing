import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routing/pages/about.dart';
import 'package:go_routing/pages/contact_us.dart';
import 'package:go_routing/pages/error_page.dart';
import 'package:go_routing/pages/home.dart';
import 'package:go_routing/pages/profile.dart';

import 'app_route_constants.dart';

class MyAppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        name: MyAppRouteConstants.homeRouteName,
        path: '/',
        pageBuilder: (context, state) {
          return MaterialPage(child: Home());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.profileRouteName,
        path: '/profile',
        pageBuilder: (context, state) {
          return MaterialPage(child: Profile());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.aboutRouteName,
        path: '/about',
        pageBuilder: (context, state) {
          return MaterialPage(child: About());
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.contactUsRouteName,
        path: '/contact_us',
        pageBuilder: (context, state) {
          return MaterialPage(child: ContactUS());
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return MaterialPage(child: ErrorPage());
    },
  );
}

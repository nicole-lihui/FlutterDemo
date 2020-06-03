import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:myapp/routers/router_init.dart';

class Routes {
  static String home = '/home';
  static String webViewPage = '/webview';

  static List<IRouterProvider> _listRouter = [];

  static void configureRoutes(Router router) {
    //router to point error return page
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      debugPrint('Not Found page');
      return WidgetNotFound();
    });

    router.define(home,
        handler: Handler(
            handlerFunc:
                (BuildContext context, Map<String, List<String>> params) =>
                    Home()));
  }
}

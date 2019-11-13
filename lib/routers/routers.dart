import 'package:fluro/fluro.dart';
import 'package:flutter_go/routers/route_handlers.dart';

class Routes {
  static void configureRoutes(Router router) {
    router.define("/widget_demo/:id", handler: widgetDetailHandler);
  }
}

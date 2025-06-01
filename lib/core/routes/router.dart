import 'package:auto_route/auto_route.dart';
import 'package:trackcore/feature/auth/auth.dart';
import 'package:trackcore/feature/home/presentation/page/home_page.dart';
import 'package:trackcore/feature/user/presentation/pages/login_page.dart';


part 'router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'View|Screen|Page,Route')
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: MyMainAuthRoute.page, initial: true),
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: HomeRoute.page),
      ];
}

import 'package:auto_route/auto_route.dart';
import 'package:events/auth/presentation/authorization_page.dart';

import 'package:events/auth/presentation/sign_in_page.dart';
import 'package:events/events_list/presentation/buy_ticket_page.dart';
import 'package:events/events_list/presentation/event_details_page.dart';
import 'package:events/events_list/presentation/event_list_page.dart';
import 'package:events/splash/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: SignInPage, path: '/sign-in'),
    MaterialRoute(page: AuthorizationPage, path: '/auth'),
    MaterialRoute(page: EventListPage, path: '/list'),
    MaterialRoute(page: BuyTicketPage, path: '/ticket'),
    MaterialRoute(page: EventDetailsPage, path: '/details'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}

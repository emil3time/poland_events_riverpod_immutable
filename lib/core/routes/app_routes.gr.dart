// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../auth/presentation/authorization_page.dart' as _i3;
import '../../auth/presentation/sign_in_page.dart' as _i2;
import '../../events_list/domain/event.dart' as _i9;
import '../../events_list/presentation/buy_ticket_page.dart' as _i5;
import '../../events_list/presentation/event_details_page.dart' as _i6;
import '../../events_list/presentation/event_list_page.dart' as _i4;
import '../../splash/splash_page.dart' as _i1;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    SignInRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignInPage(),
      );
    },
    AuthorizationRoute.name: (routeData) {
      final args = routeData.argsAs<AuthorizationRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i3.AuthorizationPage(
          key: args.key,
          authorizationUrl: args.authorizationUrl,
          onAuthorizationCodeRedirectAttempt:
              args.onAuthorizationCodeRedirectAttempt,
        ),
      );
    },
    EventListRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EventListPage(),
      );
    },
    BuyTicketRoute.name: (routeData) {
      final args = routeData.argsAs<BuyTicketRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i5.BuyTicketPage(
          key: args.key,
          ticketUrl: args.ticketUrl,
        ),
      );
    },
    EventDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<EventDetailsRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i6.EventDetailsPage(
          key: args.key,
          event: args.event,
        ),
      );
    },
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(
          SplashRoute.name,
          path: '/',
        ),
        _i7.RouteConfig(
          SignInRoute.name,
          path: '/sign-in',
        ),
        _i7.RouteConfig(
          AuthorizationRoute.name,
          path: '/auth',
        ),
        _i7.RouteConfig(
          EventListRoute.name,
          path: '/list',
        ),
        _i7.RouteConfig(
          BuyTicketRoute.name,
          path: '/ticket',
        ),
        _i7.RouteConfig(
          EventDetailsRoute.name,
          path: '/details',
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i7.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInRoute extends _i7.PageRouteInfo<void> {
  const SignInRoute()
      : super(
          SignInRoute.name,
          path: '/sign-in',
        );

  static const String name = 'SignInRoute';
}

/// generated route for
/// [_i3.AuthorizationPage]
class AuthorizationRoute extends _i7.PageRouteInfo<AuthorizationRouteArgs> {
  AuthorizationRoute({
    _i8.Key? key,
    required Uri authorizationUrl,
    required void Function(Uri) onAuthorizationCodeRedirectAttempt,
  }) : super(
          AuthorizationRoute.name,
          path: '/auth',
          args: AuthorizationRouteArgs(
            key: key,
            authorizationUrl: authorizationUrl,
            onAuthorizationCodeRedirectAttempt:
                onAuthorizationCodeRedirectAttempt,
          ),
        );

  static const String name = 'AuthorizationRoute';
}

class AuthorizationRouteArgs {
  const AuthorizationRouteArgs({
    this.key,
    required this.authorizationUrl,
    required this.onAuthorizationCodeRedirectAttempt,
  });

  final _i8.Key? key;

  final Uri authorizationUrl;

  final void Function(Uri) onAuthorizationCodeRedirectAttempt;

  @override
  String toString() {
    return 'AuthorizationRouteArgs{key: $key, authorizationUrl: $authorizationUrl, onAuthorizationCodeRedirectAttempt: $onAuthorizationCodeRedirectAttempt}';
  }
}

/// generated route for
/// [_i4.EventListPage]
class EventListRoute extends _i7.PageRouteInfo<void> {
  const EventListRoute()
      : super(
          EventListRoute.name,
          path: '/list',
        );

  static const String name = 'EventListRoute';
}

/// generated route for
/// [_i5.BuyTicketPage]
class BuyTicketRoute extends _i7.PageRouteInfo<BuyTicketRouteArgs> {
  BuyTicketRoute({
    _i8.Key? key,
    required Uri ticketUrl,
  }) : super(
          BuyTicketRoute.name,
          path: '/ticket',
          args: BuyTicketRouteArgs(
            key: key,
            ticketUrl: ticketUrl,
          ),
        );

  static const String name = 'BuyTicketRoute';
}

class BuyTicketRouteArgs {
  const BuyTicketRouteArgs({
    this.key,
    required this.ticketUrl,
  });

  final _i8.Key? key;

  final Uri ticketUrl;

  @override
  String toString() {
    return 'BuyTicketRouteArgs{key: $key, ticketUrl: $ticketUrl}';
  }
}

/// generated route for
/// [_i6.EventDetailsPage]
class EventDetailsRoute extends _i7.PageRouteInfo<EventDetailsRouteArgs> {
  EventDetailsRoute({
    _i8.Key? key,
    required _i9.Event event,
  }) : super(
          EventDetailsRoute.name,
          path: '/details',
          args: EventDetailsRouteArgs(
            key: key,
            event: event,
          ),
        );

  static const String name = 'EventDetailsRoute';
}

class EventDetailsRouteArgs {
  const EventDetailsRouteArgs({
    this.key,
    required this.event,
  });

  final _i8.Key? key;

  final _i9.Event event;

  @override
  String toString() {
    return 'EventDetailsRouteArgs{key: $key, event: $event}';
  }
}

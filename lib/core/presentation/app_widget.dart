import 'package:dartz/dartz.dart';

import 'package:events/auth/application/auth_notifier.dart';
import 'package:events/auth/shared/providers.dart';
import 'package:events/core/routes/app_routes.gr.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  final authNotifier = ref.read(authNotifierProvider.notifier);
  await authNotifier.checkAndUpdateAuthStatus();

  return unit;
});

class AppWidget extends ConsumerWidget {
  AppWidget({super.key});

  final appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (previous, next) {});

    ref.listen<AuthState>(authNotifierProvider, (prevState, state) {
      state.maybeMap(
        orElse: () {},
        accessApproval: (_) {
          appRouter.pushAndPopUntil(
            const EventListRoute(),
            predicate: (route) => false,
          );
        },
        accessDenay: (_) {
          appRouter.pushAndPopUntil(
            const SignInRoute(),
            predicate: (route) => false,
          );
        },
      );
    });

    return MaterialApp.router(
      title: 'eventsPage',
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }
}

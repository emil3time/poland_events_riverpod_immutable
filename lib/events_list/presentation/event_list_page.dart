import 'package:circular_menu/circular_menu.dart';
import 'package:events/auth/shared/providers.dart';
import 'package:events/core/presentation/toasts.dart';
import 'package:events/events_list/application/event_list_notifier.dart';

import 'package:events/events_list/presentation/empty_list_page.dart';
import 'package:events/events_list/presentation/loading_repo_tile.dart';
import 'package:events/events_list/presentation/failure_repo_tile.dart';
import 'package:events/events_list/presentation/event_tile.dart';
import 'package:events/events_list/shared/providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EventListPage extends ConsumerStatefulWidget {
  const EventListPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EventListPageState();
}

class _EventListPageState extends ConsumerState<EventListPage> {
  @override
  void initState() {
    Future.microtask(() async =>
        await ref.watch(eventListNotifierProvider.notifier).getEventPage());

    super.initState();
  }

  bool canLoadNextPage = false;
  bool hasAlreadyShowNoConnectionToast = false;
  @override
  Widget build(BuildContext context) {
    ref.listen<EventListState>(eventListNotifierProvider, (_, state) {
      state.map(
        initial: (value) => canLoadNextPage = true,
        loading: (value) => canLoadNextPage = false,
        success: (_) {
          if (_.isNoConnection && !hasAlreadyShowNoConnectionToast) {
            hasAlreadyShowNoConnectionToast = true;

            showNoConnectionToast(
              context: context,
              message: "You're not online",
            );
          }
          print(_.hasMorePages);
          canLoadNextPage = _.hasMorePages;
        },
        failure: (value) => canLoadNextPage = false,
      );
    });

    final state = ref.watch(eventListNotifierProvider);

    return Scaffold(
      floatingActionButton: CircularMenu(
        toggleButtonMargin: 40,
        alignment: Alignment.topLeft,
        radius: 80,
        items: [
          CircularMenuItem(
            onTap: () {
              ref.read(authNotifierProvider.notifier).signOut();
            },
            icon: MdiIcons.logout,
            margin: 40,
            color: Colors.purpleAccent,
          ),
          CircularMenuItem(
            onTap: () {},
            icon: MdiIcons.heart,
            margin: 40,
            color: Colors.redAccent,
          ),
        ],
      ),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          final metrics = notification.metrics;

          final limit = metrics.maxScrollExtent - metrics.viewportDimension / 3;
          print(canLoadNextPage);

          if (canLoadNextPage && metrics.pixels >= limit) {
            canLoadNextPage = false;

            ref.watch(eventListNotifierProvider.notifier).getEventPage();
            print('asdasd');
          }

          return false;
        },
        child: state.maybeWhen(
          success: (data, _, __) => data.isEmpty,
          orElse: () => false,
        )
            ? EmptyListPage()
            : _PaginatedListView(state: state),
      ),
    );
  }
}

class _PaginatedListView extends StatelessWidget {
  final EventListState state;

  const _PaginatedListView({
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    //  final fsb = context.findAncestorWidgetOfExactType<FloatingSearchBar>()?.height;
    // final fsb = FloatingSearchBar.of(context)?.widget;
    return ListView.builder(
      itemCount: state.map(
        initial: (_) => 0,
        loading: (_) => _.data.length + _.itemsPerPage,
        success: (_) => _.data.length,
        failure: (_) => _.data.length + 1,
      ),
      itemBuilder: (context, index) => state.map(
        initial: (_) => const SizedBox.shrink(),
        loading: (_) {
          if (index < _.data.length) {
            return EventTile(event: _.data[index]);
          } else {
            return const LoadingEventTile();
          }
        },
        success: (_) => EventTile(event: _.data[index]),
        failure: (_) {
          if (index < _.data.length) {
            return EventTile(event: _.data[index]);
          } else {
            return FailureEventTile(
              failures: _.failures,
            );
          }
        },
      ),
    );
  }
}

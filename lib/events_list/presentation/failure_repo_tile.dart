import 'package:events/events_list/domain/eventbrite_failures.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class FailureEventTile extends ConsumerWidget {
  final EventbriteFailures failures;

  const FailureEventTile({
    required this.failures,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTileTheme(
      iconColor: Theme.of(context).colorScheme.onError,
      textColor: Theme.of(context).colorScheme.onError,
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 8,
        ),
        color: Theme.of(context).colorScheme.error,
        child: ListTile(
          leading: const SizedBox(
            height: double.infinity,
            child: Icon(Icons.error),
          ),
          title: const Text(
            'An error ocurred, please retry',
          ),
          subtitle: Text(
            'API returned: ${failures.map(api: (value) => value.errorCode)}',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          trailing: IconButton(
            icon: const Icon(Icons.restart_alt),
            onPressed: () {
              /*    ref
                  .read(starredRepoNotifierProvider.notifier)
                  .getNextStarredRepoPage(); */
              //TODO create proper navigation
              /*  context
                  .findAncestorWidgetOfExactType<PaginatedReposListView>()
                  ?.getNextPage(ref); */
            },
          ),
        ),
      ),
    );
  }
}

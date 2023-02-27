import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:events/core/routes/app_routes.gr.dart';
import 'package:events/core/constants/app_text_style.dart';
import 'package:events/events_list/domain/event.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EventTile extends StatelessWidget {
  // final GithubRepo repo;
  final Event event;
  const EventTile({
    super.key,
    required this.event,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Hero(
          tag: event.imageUrl.image,
          child: Image(
            image: CachedNetworkImageProvider(event.imageUrl.image),
            height: 200,
          ),
        ),
        ListTile(
          onTap: () {
            /* AutoRouter.of(context)
                .push(BuyTicketRoute(ticketUrl: Uri.parse(event.ticketUrl))); */
            AutoRouter.of(context).push(EventDetailsRoute(event: event));
          },
          title: Text(
            event.name,
            style: AppTextStyle.listTileTextStyle,
          ),
          subtitle: Text(
            event.description,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.listTileTextStyle,
          ),
          // leading: Hero(
          //   tag: event.description,
          //   child: CircleAvatar(
          //     backgroundImage: CachedNetworkImageProvider(event.imageUrl.image),
          //     backgroundColor: Colors.transparent,
          //     radius: 16,
          //   ),
          // ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                MdiIcons.ticket,
                color: event.ticketAvailability.isSoldOut
                    ? Colors.grey
                    : Colors.lightGreen,
              ),
              Text(
                event.ticketAvailability.isSoldOut ? 'Sold Out' : 'Available',
                style: AppTextStyle.listTileTextStyle,
              ),
            ],
          ),
        ),
        Divider(
          color: Colors.grey,
          thickness: 3,
          height: 1,
        )
      ],
    );
  }
}

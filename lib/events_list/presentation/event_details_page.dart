import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:events/core/routes/app_routes.gr.dart';
import 'package:events/core/constants/app_text_style.dart';
import 'package:events/events_list/domain/event.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class EventDetailsPage extends StatelessWidget {
  final Event event;
  const EventDetailsPage({super.key, required this.event});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            Hero(
              tag: event.imageUrl.image,
              child: Image(
                image: CachedNetworkImageProvider(event.imageUrl.image),
                height: 200,
              ),
            ),
            ListTile(
              title: Text(
                event.name,
                style: AppTextStyle.titleTextStyle,
              ),
              subtitle: Row(
                children: [
                  Text(
                    event.startDate,
                    style: AppTextStyle.eventTextStyle,
                  ),
                  Spacer(),
                  Text(
                    event.startTime,
                    style: AppTextStyle.eventTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Text(
                    event.primaryVenue.address.city,
                    style: AppTextStyle.eventTextStyle,
                  ),
                  Text(
                    event.primaryVenue.address.addressWitchPostCode,
                    style: AppTextStyle.eventTextStyle,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.symmetric(horizontal: 15),
                children: [
                  Text(
                    event.description,
                    style: AppTextStyle.eventTextStyle,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: MaterialButton(
                padding: EdgeInsets.all(8),
                onPressed: () {
                  AutoRouter.of(context).push(
                      BuyTicketRoute(ticketUrl: Uri.parse(event.ticketUrl)));
                },
                color: Colors.amber,
                child: Row(
                  children: [
                    Text(
                      event.ticketAvailability.isFree
                          ? 'Take Your Free Ticket'
                          : 'Buy a Ticket',
                      style: AppTextStyle.eventTextStyle,
                    ),
                    Spacer(),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          MdiIcons.ticket,
                          color: event.ticketAvailability.isSoldOut
                              ? Colors.grey
                              : Colors.lightGreen,
                        ),
                        Text(
                          event.ticketAvailability.isSoldOut
                              ? 'Sold Out'
                              : 'Available',
                          style: Theme.of(context).textTheme.caption,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

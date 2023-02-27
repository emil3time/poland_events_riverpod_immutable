import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:shimmer/shimmer.dart';

class LoadingEventTile extends StatelessWidget {
  const LoadingEventTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade400,
      highlightColor: Colors.grey.shade300,
      child: Column(
        children: [
          Container(
            color: Colors.amber,
            height: 200,
            width: double.infinity,
          ),
          ListTile(
            title: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 14,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            subtitle: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 14,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(MdiIcons.ticket),
                Text(
                  '',
                  style: Theme.of(context).textTheme.caption,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

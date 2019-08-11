import 'package:flutter/material.dart';

import 'card-view.dart';

Widget buildMinhaListView(List list) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    shrinkWrap: true,
    physics: const ClampingScrollPhysics(),
    itemCount: list == null ? 0 : list.length,
    padding: const EdgeInsets.all(16),
    itemBuilder: (context, index) {
      return buildCardView(list[index]);
    },
  );
}
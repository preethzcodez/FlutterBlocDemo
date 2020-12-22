import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/constants/colors.dart';
import 'package:flutter_bloc_demo/constants/routes.dart';
import 'package:flutter_bloc_demo/data/models/showslist.dart';

class HomeScreenSubList extends StatelessWidget {
  final List<ShowsList> _showsList;

  HomeScreenSubList(this._showsList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _showsList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.fromLTRB(4, 0, 4, 4),
            child: GestureDetector(
                onTap: () => Navigator.pushNamed(context, Routes.showDetails, arguments: _showsList.elementAt(index)),
                child: CachedNetworkImage(
                    imageUrl: _showsList.elementAt(index).image.medium)),
          );
        });
  }
}

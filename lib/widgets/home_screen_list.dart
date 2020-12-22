import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/constants/colors.dart';
import 'package:flutter_bloc_demo/data/models/showslist.dart';

import 'home_screen_sublist.dart';

class HomeScreenList extends StatelessWidget {
  final Map<String, List<ShowsList>> _showsListByGenre;
  final List<String> _genres;

  HomeScreenList(this._genres, this._showsListByGenre);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: _genres.length,
        itemBuilder: (context, index) {
          return Container(
            height: 250,
            color: backgroundColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(12, 12, 12, 6),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(_genres[index],
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18))),
                ),
                Expanded(
                    child: Container(
                        margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: HomeScreenSubList(
                            _showsListByGenre[_genres[index]])))
              ],
            ),
          );
        });
  }
}

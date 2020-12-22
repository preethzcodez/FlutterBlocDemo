import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc_demo/constants/colors.dart';
import 'package:flutter_bloc_demo/data/models/showslist.dart';
import 'package:flutter_html/flutter_html.dart';

class ShowDetails extends StatefulWidget {
  @override
  _ShowDetails createState() => _ShowDetails();
}

class _ShowDetails extends State<ShowDetails> {
  @override
  Widget build(BuildContext context) {
    final ShowsList _showDetails = ModalRoute.of(context).settings.arguments;
    print(_showDetails);
    return SafeArea(
        child: Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.black,
              width: MediaQuery.of(context).size.width,
              height: 200,
              child: CachedNetworkImage(imageUrl: _showDetails.image.original,fit: BoxFit.fitWidth,),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 8, 16, 0),
              child: Text(
                _showDetails.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Html(
                data: _showDetails.summary,
                defaultTextStyle: TextStyle(fontSize: 14),
              )
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: Text(
                "Rating: " + _showDetails.rating.average.toString(),
                style: TextStyle( fontSize: 12, color: smallTextColor),
              ),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(16, 4, 16, 0),
                child:  Text(
                    "Genres: " + _showDetails.genres.join(","),
                    style: TextStyle( fontSize: 12, color: smallTextColor),
                )
            ),
          ],
        ),
      ),
    ));
  }
}

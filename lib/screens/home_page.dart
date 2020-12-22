import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/bloc/events/showslist_event.dart';
import 'package:flutter_bloc_demo/bloc/showslist_bloc.dart';
import 'package:flutter_bloc_demo/bloc/states/showslist_state.dart';
import 'package:flutter_bloc_demo/constants/colors.dart';
import 'package:flutter_bloc_demo/widgets/home_screen_list.dart';

class Home extends StatefulWidget {
  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Demo App", style: TextStyle(fontSize: 20)),
          ),
        ),
        backgroundColor: backgroundColor,
        body: RefreshIndicator(
          onRefresh: () async {
            fetchShowsList(context);
          },
          child: BlocConsumer<ShowsListBloc, ShowsListState>(
            listener: (context, state) {
              print(state);
            },
            builder: (context, state) {
              if (state is ShowsListInitialState) {
                fetchShowsList(context);
              } else if (state is ShowsListLoading) {
                return Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
              } else if (state is ShowsListLoaded) {
                return HomeScreenList(state.genres, state.showsListByGenre);
              }
              return new Container();
            },
          ),
        ));
  }
}

void fetchShowsList(BuildContext context) {
  BlocProvider.of<ShowsListBloc>(context).add(
    FetchShowsList(),
  );
}

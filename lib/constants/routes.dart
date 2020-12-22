import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_demo/bloc/showslist_bloc.dart';
import 'package:flutter_bloc_demo/data/repo/showslist_repo.dart';
import 'package:flutter_bloc_demo/screens/home_page.dart';
import 'package:flutter_bloc_demo/screens/show_details.dart';

class Routes {
  Routes._();

  static const String home = "/home";
  static const String showDetails = "/show_details";

  static final routes = <String, WidgetBuilder>{
    home: (BuildContext context) => BlocProvider(
      create: (context) => ShowsListBloc(ShowsListRepositoryImpl()),
      child: Home(),
    ),
    showDetails: (BuildContext context) => ShowDetails(),
  };
}
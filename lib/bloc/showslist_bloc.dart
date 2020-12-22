import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc_demo/bloc/events/showslist_event.dart';
import 'package:flutter_bloc_demo/bloc/states/showslist_state.dart';
import 'package:flutter_bloc_demo/data/models/showslist.dart';
import 'package:flutter_bloc_demo/data/repo/showslist_repo.dart';

class ShowsListBloc extends Bloc<ShowsListEvent, ShowsListState> {
  final ShowsListRepository _showsListRepository;

  ShowsListBloc(this._showsListRepository) : super(ShowsListInitialState());

  @override
  Stream<ShowsListState> mapEventToState(
      ShowsListEvent event,
      ) async* {
    if (event is FetchShowsList) {
      try {
        yield ShowsListLoading();
        final showsList = await _showsListRepository.fetchShowsList();

        // get all genres from the shows list
        List<String> genresList = [];
        showsList.forEach((show) {
          genresList = genresList + show.genres;
        });
        genresList = genresList.toSet().toList(); // remove duplicates
        genresList.sort((String a, String b)=>a.compareTo(b)); // sort alphabetically

        // filter shows list by genre
        Map<String,List<ShowsList>> showsListByGenre = new Map();
        genresList.forEach((genre) {
          List<ShowsList> shows = showsList.where((item) => item.genres.contains(genre)).toList();
          showsListByGenre[genre] = shows;
        });
        print(showsListByGenre);

        yield ShowsListLoaded(genresList, showsListByGenre);
      } on Exception {
        yield ShowsListError("Couldn't fetch data");
      }
    }
  }
}
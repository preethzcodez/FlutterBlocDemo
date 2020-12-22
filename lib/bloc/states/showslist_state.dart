abstract class ShowsListState {
  const ShowsListState();
}

class ShowsListInitialState extends ShowsListState {
  const ShowsListInitialState();
}

class ShowsListLoading extends ShowsListState {
  const ShowsListLoading();
}

class ShowsListLoaded extends ShowsListState {
  final List<String> genres;
  final Map<String,List> showsListByGenre;
  const ShowsListLoaded(this.genres, this.showsListByGenre);
}

class ShowsListError extends ShowsListState {

  final String message;
  const ShowsListError(this.message);
}
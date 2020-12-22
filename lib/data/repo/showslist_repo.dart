import 'package:flutter_bloc_demo/constants/config.dart';
import 'package:flutter_bloc_demo/data/models/showslist.dart';
import 'package:flutter_bloc_demo/network/api_handler.dart';

abstract class ShowsListRepository {
  Future<List<ShowsList>> fetchShowsList();
}

class ShowsListRepositoryImpl implements ShowsListRepository {
  ApiHandler _apiHandler = ApiHandler();

  @override
  Future<List<ShowsList>> fetchShowsList() async {
    List<dynamic> showsList = await _apiHandler.get(Config.END_POINTS['showsList']) as List;
    print(showsList);
    return showsList.map((show) => ShowsList.fromJson(show)).toList();
  }
}
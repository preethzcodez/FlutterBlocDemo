/// id : 1
/// url : "http://www.tvmaze.com/shows/1/under-the-dome"
/// name : "Under the Dome"
/// type : "Scripted"
/// language : "English"
/// genres : ["Drama","Science-Fiction","Thriller"]
/// status : "Ended"
/// runtime : 60
/// premiered : "2013-06-24"
/// officialSite : "http://www.cbs.com/shows/under-the-dome/"
/// schedule : {"time":"22:00","days":["Thursday"]}
/// rating : {"average":6.5}
/// weight : 97
/// network : {"id":2,"name":"CBS","country":{"name":"United States","code":"US","timezone":"America/New_York"}}
/// webChannel : null
/// externals : {"tvrage":25988,"thetvdb":264492,"imdb":"tt1553656"}
/// image : {"medium":"http://static.tvmaze.com/uploads/images/medium_portrait/81/202627.jpg","original":"http://static.tvmaze.com/uploads/images/original_untouched/81/202627.jpg"}
/// summary : "<p><b>Under the Dome</b> is the story of a small town that is suddenly and inexplicably sealed off from the rest of the world by an enormous transparent dome. The town's inhabitants must deal with surviving the post-apocalyptic conditions while searching for answers about the dome, where it came from and if and when it will go away.</p>"
/// updated : 1573667713

class ShowsList {
  num _id;
  String _url;
  String _name;
  String _type;
  String _language;
  List<String> _genres;
  String _status;
  num _runtime;
  String _premiered;
  String _officialSite;
  Schedule _schedule;
  Rating _rating;
  num _weight;
  Network _network;
  dynamic _webChannel;
  Externals _externals;
  Image _image;
  String _summary;
  num _updated;

  num get id => _id;

  String get url => _url;

  String get name => _name;

  String get type => _type;

  String get language => _language;

  List<String> get genres => _genres;

  String get status => _status;

  num get runtime => _runtime;

  String get premiered => _premiered;

  String get officialSite => _officialSite;

  Schedule get schedule => _schedule;

  Rating get rating => _rating;

  num get weight => _weight;

  Network get network => _network;

  dynamic get webChannel => _webChannel;

  Externals get externals => _externals;

  Image get image => _image;

  String get summary => _summary;

  num get updated => _updated;

  ShowsList(
      {num id,
      String url,
      String name,
      String type,
      String language,
      List<String> genres,
      String status,
      num runtime,
      String premiered,
      String officialSite,
      Schedule schedule,
      Rating rating,
      num weight,
      Network network,
      dynamic webChannel,
      Externals externals,
      Image image,
      String summary,
      num updated}) {
    _id = id;
    _url = url;
    _name = name;
    _type = type;
    _language = language;
    _genres = genres;
    _status = status;
    _runtime = runtime;
    _premiered = premiered;
    _officialSite = officialSite;
    _schedule = schedule;
    _rating = rating;
    _weight = weight;
    _network = network;
    _webChannel = webChannel;
    _externals = externals;
    _image = image;
    _summary = summary;
    _updated = updated;
  }

  ShowsList.fromJson(dynamic json) {
    _id = json["id"];
    _url = json["url"];
    _name = json["name"];
    _type = json["type"];
    _language = json["language"];
    _genres = json["genres"] != null ? json["genres"].cast<String>() : [];
    _status = json["status"];
    _runtime = json["runtime"];
    _premiered = json["premiered"];
    _officialSite = json["officialSite"];
    _schedule =
        json["schedule"] != null ? Schedule.fromJson(json["schedule"]) : null;
    _rating = json["rating"] != null ? Rating.fromJson(json["rating"]) : null;
    _weight = json["weight"];
    _network =
        json["network"] != null ? Network.fromJson(json["network"]) : null;
    _webChannel = json["webChannel"];
    _externals = json["externals"] != null
        ? Externals.fromJson(json["externals"])
        : null;
    _image = json["image"] != null ? Image.fromJson(json["image"]) : null;
    _summary = json["summary"];
    _updated = json["updated"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["url"] = _url;
    map["name"] = _name;
    map["type"] = _type;
    map["language"] = _language;
    map["genres"] = _genres;
    map["status"] = _status;
    map["runtime"] = _runtime;
    map["premiered"] = _premiered;
    map["officialSite"] = _officialSite;
    if (_schedule != null) {
      map["schedule"] = _schedule.toJson();
    }
    if (_rating != null) {
      map["rating"] = _rating.toJson();
    }
    map["weight"] = _weight;
    if (_network != null) {
      map["network"] = _network.toJson();
    }
    map["webChannel"] = _webChannel;
    if (_externals != null) {
      map["externals"] = _externals.toJson();
    }
    if (_image != null) {
      map["image"] = _image.toJson();
    }
    map["summary"] = _summary;
    map["updated"] = _updated;
    return map;
  }
}

/// href : "http://api.tvmaze.com/episodes/185054"

class Previousepisode {
  String _href;

  String get href => _href;

  Previousepisode({String href}) {
    _href = href;
  }

  Previousepisode.fromJson(dynamic json) {
    _href = json["href"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["href"] = _href;
    return map;
  }
}

/// href : "http://api.tvmaze.com/shows/1"

class Self {
  String _href;

  String get href => _href;

  Self({String href}) {
    _href = href;
  }

  Self.fromJson(dynamic json) {
    _href = json["href"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["href"] = _href;
    return map;
  }
}

/// medium : "http://static.tvmaze.com/uploads/images/medium_portrait/81/202627.jpg"
/// original : "http://static.tvmaze.com/uploads/images/original_untouched/81/202627.jpg"

class Image {
  String _medium;
  String _original;

  String get medium => _medium;

  String get original => _original;

  Image({String medium, String original}) {
    _medium = medium;
    _original = original;
  }

  Image.fromJson(dynamic json) {
    _medium = json["medium"];
    _original = json["original"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["medium"] = _medium;
    map["original"] = _original;
    return map;
  }
}

/// tvrage : 25988
/// thetvdb : 264492
/// imdb : "tt1553656"

class Externals {
  num _tvrage;
  num _thetvdb;
  String _imdb;

  num get tvrage => _tvrage;

  num get thetvdb => _thetvdb;

  String get imdb => _imdb;

  Externals({num tvrage, num thetvdb, String imdb}) {
    _tvrage = tvrage;
    _thetvdb = thetvdb;
    _imdb = imdb;
  }

  Externals.fromJson(dynamic json) {
    _tvrage = json["tvrage"];
    _thetvdb = json["thetvdb"];
    _imdb = json["imdb"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["tvrage"] = _tvrage;
    map["thetvdb"] = _thetvdb;
    map["imdb"] = _imdb;
    return map;
  }
}

/// id : 2
/// name : "CBS"
/// country : {"name":"United States","code":"US","timezone":"America/New_York"}

class Network {
  num _id;
  String _name;
  Country _country;

  num get id => _id;

  String get name => _name;

  Country get country => _country;

  Network({num id, String name, Country country}) {
    _id = id;
    _name = name;
    _country = country;
  }

  Network.fromJson(dynamic json) {
    _id = json["id"];
    _name = json["name"];
    _country =
        json["country"] != null ? Country.fromJson(json["country"]) : null;
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["id"] = _id;
    map["name"] = _name;
    if (_country != null) {
      map["country"] = _country.toJson();
    }
    return map;
  }
}

/// name : "United States"
/// code : "US"
/// timezone : "America/New_York"

class Country {
  String _name;
  String _code;
  String _timezone;

  String get name => _name;

  String get code => _code;

  String get timezone => _timezone;

  Country({String name, String code, String timezone}) {
    _name = name;
    _code = code;
    _timezone = timezone;
  }

  Country.fromJson(dynamic json) {
    _name = json["name"];
    _code = json["code"];
    _timezone = json["timezone"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["name"] = _name;
    map["code"] = _code;
    map["timezone"] = _timezone;
    return map;
  }
}

/// average : 6.5

class Rating {
  num _average;

  num get average => _average;

  Rating({num average}) {
    _average = average;
  }

  Rating.fromJson(dynamic json) {
    _average = json["average"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["average"] = _average;
    return map;
  }
}

/// time : "22:00"
/// days : ["Thursday"]

class Schedule {
  String _time;
  List<String> _days;

  String get time => _time;

  List<String> get days => _days;

  Schedule({String time, List<String> days}) {
    _time = time;
    _days = days;
  }

  Schedule.fromJson(dynamic json) {
    _time = json["time"];
    _days = json["days"] != null ? json["days"].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["time"] = _time;
    map["days"] = _days;
    return map;
  }
}

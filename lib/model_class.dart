class Model {
  String? _name;
  String? _url;
  String? _description;
  String? _author;
  List<String>? _ingredients;
  List<String>? _method;

  Model({String? name,
    String? url,
    String? description,
    String? author,
    List<String>? ingredients,
    List<String>? method}) {
    if (name != null) {
      this._name = name;
    }
    if (url != null) {
      this._url = url;
    }
    if (description != null) {
      this._description = description;
    }
    if (author != null) {
      this._author = author;
    }
    if (ingredients != null) {
      this._ingredients = ingredients;
    }
    if (method != null) {
      this._method = method;
    }
  }

  String? get name => _name;

  set name(String? name) => _name = name;

  String? get url => _url;

  set url(String? url) => _url = url;

  String? get description => _description;

  set description(String? description) => _description = description;

  String? get author => _author;

  set author(String? author) => _author = author;

  List<String>? get ingredients => _ingredients;

  set ingredients(List<String>? ingredients) => _ingredients = ingredients;

  List<String>? get method => _method;

  set method(List<String>? method) => _method = method;

  Model.fromJson(Map<String, dynamic> json) {
    _name = json['Name'];
    _url = json['url'];
    _description = json['Description'];
    _author = json['Author'];
    _ingredients = json['Ingredients'].cast<String>();
    _method = json['Method'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this._name;
    data['url'] = this._url;
    data['Description'] = this._description;
    data['Author'] = this._author;
    data['Ingredients'] = this._ingredients;
    data['Method'] = this._method;
    return data;
  }


  @override
  String toString() {
    return '{Name: $_name, Method: $_method, url: $_url, Description: $_description, Author: $_author, Ingredients: $_ingredients}';
  }

  static List<Model> parseList(List value) {
    List<Model> listdata = value.map((e) => Model.fromJson(e)).toList();
    return listdata;
  }
}

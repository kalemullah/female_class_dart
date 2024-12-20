class CountryNamAndFlageModel {
  bool? error;
  String? msg;
  List<Data>? data;

  CountryNamAndFlageModel({this.error, this.msg, this.data});

  CountryNamAndFlageModel.fromJson(Map<String, dynamic> json) {
    error = json['error'];
    msg = json['msg'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['error'] = this.error;
    data['msg'] = this.msg;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  String? name;
  String? flag;
  String? iso2;
  String? iso3;

  Data({this.name, this.flag, this.iso2, this.iso3});

  Data.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    flag = json['flag'];
    iso2 = json['iso2'];
    iso3 = json['iso3'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['flag'] = this.flag;
    data['iso2'] = this.iso2;
    data['iso3'] = this.iso3;
    return data;
  }
}

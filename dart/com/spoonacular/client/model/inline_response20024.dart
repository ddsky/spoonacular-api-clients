part of openapi.api;

class InlineResponse20024 {
  
  String name = null;
  
  String image = null;
  
  int id = null;
  
  String aisle = null;
  
  List<String> possibleUnits = [];
  InlineResponse20024();

  @override
  String toString() {
    return 'InlineResponse20024[name=$name, image=$image, id=$id, aisle=$aisle, possibleUnits=$possibleUnits, ]';
  }

  InlineResponse20024.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['name'] == null) {
      name = null;
    } else {
          name = json['name'];
    }
    if (json['image'] == null) {
      image = null;
    } else {
          image = json['image'];
    }
    if (json['id'] == null) {
      id = null;
    } else {
          id = json['id'];
    }
    if (json['aisle'] == null) {
      aisle = null;
    } else {
          aisle = json['aisle'];
    }
    if (json['possibleUnits'] == null) {
      possibleUnits = null;
    } else {
      possibleUnits = (json['possibleUnits'] as List).cast<String>();
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
    if (image != null)
      json['image'] = image;
    if (id != null)
      json['id'] = id;
    if (aisle != null)
      json['aisle'] = aisle;
    if (possibleUnits != null)
      json['possibleUnits'] = possibleUnits;
    return json;
  }

  static List<InlineResponse20024> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20024>() : json.map((value) => new InlineResponse20024.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20024> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20024>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20024.fromJson(value));
    }
    return map;
  }
}


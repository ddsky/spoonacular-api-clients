part of openapi.api;

class InlineResponse20019 {
  
  num sourceAmount = null;
  
  String sourceUnit = null;
  
  num targetAmount = null;
  
  String targetUnit = null;
  
  String answer = null;
  InlineResponse20019();

  @override
  String toString() {
    return 'InlineResponse20019[sourceAmount=$sourceAmount, sourceUnit=$sourceUnit, targetAmount=$targetAmount, targetUnit=$targetUnit, answer=$answer, ]';
  }

  InlineResponse20019.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['sourceAmount'] == null) {
      sourceAmount = null;
    } else {
          sourceAmount = json['sourceAmount'];
    }
    if (json['sourceUnit'] == null) {
      sourceUnit = null;
    } else {
          sourceUnit = json['sourceUnit'];
    }
    if (json['targetAmount'] == null) {
      targetAmount = null;
    } else {
          targetAmount = json['targetAmount'];
    }
    if (json['targetUnit'] == null) {
      targetUnit = null;
    } else {
          targetUnit = json['targetUnit'];
    }
    if (json['answer'] == null) {
      answer = null;
    } else {
          answer = json['answer'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (sourceAmount != null)
      json['sourceAmount'] = sourceAmount;
    if (sourceUnit != null)
      json['sourceUnit'] = sourceUnit;
    if (targetAmount != null)
      json['targetAmount'] = targetAmount;
    if (targetUnit != null)
      json['targetUnit'] = targetUnit;
    if (answer != null)
      json['answer'] = answer;
    return json;
  }

  static List<InlineResponse20019> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20019>() : json.map((value) => new InlineResponse20019.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20019> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20019>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20019.fromJson(value));
    }
    return map;
  }
}


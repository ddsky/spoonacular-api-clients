part of openapi.api;

class InlineResponse20044 {
  
  List<String> pairedWines = [];
  
  String pairingText = null;
  
  List<InlineResponse20044ProductMatches> productMatches = [];
  InlineResponse20044();

  @override
  String toString() {
    return 'InlineResponse20044[pairedWines=$pairedWines, pairingText=$pairingText, productMatches=$productMatches, ]';
  }

  InlineResponse20044.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['pairedWines'] == null) {
      pairedWines = null;
    } else {
      pairedWines = (json['pairedWines'] as List).cast<String>();
    }
    if (json['pairingText'] == null) {
      pairingText = null;
    } else {
          pairingText = json['pairingText'];
    }
    if (json['productMatches'] == null) {
      productMatches = null;
    } else {
      productMatches = InlineResponse20044ProductMatches.listFromJson(json['productMatches']);
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (pairedWines != null)
      json['pairedWines'] = pairedWines;
    if (pairingText != null)
      json['pairingText'] = pairingText;
    if (productMatches != null)
      json['productMatches'] = productMatches;
    return json;
  }

  static List<InlineResponse20044> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20044>() : json.map((value) => new InlineResponse20044.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20044> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse20044>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse20044.fromJson(value));
    }
    return map;
  }
}


part of openapi.api;

class InlineResponse2003WinePairing {
  
  List<String> pairedWines = [];
  
  String pairingText = null;
  
  List<InlineResponse2003WinePairingProductMatches> productMatches = [];
  InlineResponse2003WinePairing();

  @override
  String toString() {
    return 'InlineResponse2003WinePairing[pairedWines=$pairedWines, pairingText=$pairingText, productMatches=$productMatches, ]';
  }

  InlineResponse2003WinePairing.fromJson(Map<String, dynamic> json) {
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
      productMatches = InlineResponse2003WinePairingProductMatches.listFromJson(json['productMatches']);
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

  static List<InlineResponse2003WinePairing> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse2003WinePairing>() : json.map((value) => new InlineResponse2003WinePairing.fromJson(value)).toList();
  }

  static Map<String, InlineResponse2003WinePairing> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineResponse2003WinePairing>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineResponse2003WinePairing.fromJson(value));
    }
    return map;
  }
}


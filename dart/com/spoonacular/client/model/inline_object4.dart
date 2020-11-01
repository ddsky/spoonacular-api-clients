part of openapi.api;

class InlineObject4 {
  /* The title of the recipe. */
  String title = null;
  /* The binary image of the recipe as jpg. */
  MultipartFile image = null;
  /* The ingredient list of the recipe, one ingredient per line (separate lines with \\n). */
  String ingredients = null;
  /* The instructions to make the recipe. One step per line (separate lines with \\n). */
  String instructions = null;
  /* The number of minutes it takes to get the recipe on the table. */
  num readyInMinutes = null;
  /* The number of servings the recipe makes. */
  num servings = null;
  /* The mask to put over the recipe image (\"ellipseMask\", \"diamondMask\", \"starMask\", \"heartMask\", \"potMask\", \"fishMask\"). */
  String mask = null;
  /* The background image (\"none\",\"background1\", or \"background2\"). */
  String backgroundImage = null;
  /* The author of the recipe. */
  String author = null;
  /* The background color for the recipe card as a hex-string. */
  String backgroundColor = null;
  /* The font color for the recipe card as a hex-string. */
  String fontColor = null;
  /* The source of the recipe. */
  String source = null;
  InlineObject4();

  @override
  String toString() {
    return 'InlineObject4[title=$title, image=$image, ingredients=$ingredients, instructions=$instructions, readyInMinutes=$readyInMinutes, servings=$servings, mask=$mask, backgroundImage=$backgroundImage, author=$author, backgroundColor=$backgroundColor, fontColor=$fontColor, source=$source, ]';
  }

  InlineObject4.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    if (json['title'] == null) {
      title = null;
    } else {
          title = json['title'];
    }
    if (json['image'] == null) {
      image = null;
    } else {
      image = new File.fromJson(json['image']);
    }
    if (json['ingredients'] == null) {
      ingredients = null;
    } else {
          ingredients = json['ingredients'];
    }
    if (json['instructions'] == null) {
      instructions = null;
    } else {
          instructions = json['instructions'];
    }
    if (json['readyInMinutes'] == null) {
      readyInMinutes = null;
    } else {
          readyInMinutes = json['readyInMinutes'];
    }
    if (json['servings'] == null) {
      servings = null;
    } else {
          servings = json['servings'];
    }
    if (json['mask'] == null) {
      mask = null;
    } else {
          mask = json['mask'];
    }
    if (json['backgroundImage'] == null) {
      backgroundImage = null;
    } else {
          backgroundImage = json['backgroundImage'];
    }
    if (json['author'] == null) {
      author = null;
    } else {
          author = json['author'];
    }
    if (json['backgroundColor'] == null) {
      backgroundColor = null;
    } else {
          backgroundColor = json['backgroundColor'];
    }
    if (json['fontColor'] == null) {
      fontColor = null;
    } else {
          fontColor = json['fontColor'];
    }
    if (json['source'] == null) {
      source = null;
    } else {
          source = json['source'];
    }
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (title != null)
      json['title'] = title;
    if (image != null)
      json['image'] = image;
    if (ingredients != null)
      json['ingredients'] = ingredients;
    if (instructions != null)
      json['instructions'] = instructions;
    if (readyInMinutes != null)
      json['readyInMinutes'] = readyInMinutes;
    if (servings != null)
      json['servings'] = servings;
    if (mask != null)
      json['mask'] = mask;
    if (backgroundImage != null)
      json['backgroundImage'] = backgroundImage;
    if (author != null)
      json['author'] = author;
    if (backgroundColor != null)
      json['backgroundColor'] = backgroundColor;
    if (fontColor != null)
      json['fontColor'] = fontColor;
    if (source != null)
      json['source'] = source;
    return json;
  }

  static List<InlineObject4> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineObject4>() : json.map((value) => new InlineObject4.fromJson(value)).toList();
  }

  static Map<String, InlineObject4> mapFromJson(Map<String, dynamic> json) {
    var map = new Map<String, InlineObject4>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = new InlineObject4.fromJson(value));
    }
    return map;
  }
}


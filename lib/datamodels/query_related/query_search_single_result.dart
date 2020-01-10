class QuerySearchSingleResult {
  String id;
  String label;
  String matchString;
  String matchType;
  String region;
  int score;
  String word;

  QuerySearchSingleResult({
    this.id,
    this.label,
    this.matchString,
    this.matchType,
    this.region,
    this.score,
    this.word,
  });

  QuerySearchSingleResult.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    label = json['label'];
    matchString = json['matchString'];
    matchType = json['matchType'];
    region = json['region'];
    score = json['score'];
    word = json['word'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['label'] = this.label;
    data['matchString'] = this.matchString;
    data['matchType'] = this.matchType;
    data['region'] = this.region;
    data['score'] = this.score;
    data['word'] = this.word;
    return data;
  }
}

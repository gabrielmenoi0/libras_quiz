class QuizModel {
  String? giphy;
  int? id;
  String? option1;
  String? option2;
  String? option3;
  String? option4;
  String? check;

  QuizModel(
      {this.giphy,
        this.id,
        this.option1,
        this.option2,
        this.option3,
        this.option4,
        this.check});

  QuizModel.fromJson(Map<String, dynamic> json) {
    giphy = json['giphy'];
    id = json['id'];
    option1 = json['option1'];
    option2 = json['option2'];
    option3 = json['option3'];
    option4 = json['option4'];
    check = json['check'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['giphy'] = this.giphy;
    data['id'] = this.id;
    data['option1'] = this.option1;
    data['option2'] = this.option2;
    data['option3'] = this.option3;
    data['option4'] = this.option4;
    data['check'] = this.check;
    return data;
  }
}
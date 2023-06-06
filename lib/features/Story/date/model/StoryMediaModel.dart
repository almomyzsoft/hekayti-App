class StoryMediaModel {
  dynamic id, page_no,story_id,photo,sound,text,updated_at;

  StoryMediaModel({
     this.id,
    required this.story_id,
    required this.photo,
    required this.sound,
    required this.text,
    required this.updated_at,
    required this.page_no,});

  factory StoryMediaModel.fromJson(Map<String, dynamic> meadia) {
    return StoryMediaModel(



        id: meadia['id'],
        story_id: meadia['story_id'],
        updated_at: meadia['updated_at'],
        photo: meadia['photo'],
        sound: meadia['sound'],
        text: meadia['text'],
        page_no: meadia['page_no']);
  }

  StoryMediaModel fromJson(Map<String, dynamic> json) {
    return StoryMediaModel.fromJson(json);
  }

  factory StoryMediaModel.init() {
    return StoryMediaModel(
      id: '',
      page_no: '',
      text: '',
      updated_at: '',
      sound: '',
      photo: '',
      story_id: '',


    );
  }

  fromJsonList(List<dynamic> jsonList) {
    List<StoryMediaModel> data = [];
    jsonList.forEach((post) {
      data.add(StoryMediaModel.fromJson(post));
    });
    return data;
  }

  Map<String, dynamic> toJson() => {

    'id': id,
    'text': text,
    'sound': sound,
    'photo': photo,
    'updated_at': updated_at,
    'story_id': story_id,
    'page_no': page_no};
}
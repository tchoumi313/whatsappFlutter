class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name="", this.message="", this.time="", this.avatarUrl="" });
}
  List <ChatModel> dummyData = [
    new ChatModel(
      name : "Donald",
      message: "Hello Guy! How are you Doing?",
      time: "12:14 AM",
      avatarUrl:"",
    ),

    new ChatModel(
      name : "DeYoung",
      message: "salut tonton Boooooo ! ",
      time: "2:14 PM",
      avatarUrl:"",
    ),
  ];

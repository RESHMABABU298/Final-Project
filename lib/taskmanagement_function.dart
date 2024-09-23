class Taskmodule
{
  late String title;
  late bool isCompleted;

  Taskmodule({ this.isCompleted=false,required this.title});
   Map<String, dynamic> toJson() {
    return {
      'title': title,
      'isCompleted': isCompleted,
    };
  }
   static Taskmodule fromJson(Map<String, dynamic> json) {
    return Taskmodule(
      title: json['title'],
      isCompleted: json['isCompleted'],
    );
  }
}
//  class ChatModel{
//   String? id;
//   String? message;
//   String? senderName;
//   String? senderId;
//   String? receiverId;
//    String? timestamp;
//   String? readStatus;
//   String? imageUrl;
//   String? videoUrl;
//   String? audioUrl;
//   String? documenntUrl;
//   List<String>? reactions;
//   List<dynamic>? replies;
//   ChatModel({this.id,
//   this.message,
//   this.senderName,
//   this.senderId,
//   this.receiverId,
//   this.timestamp,
//   this.readStatus,
//   this.imageUrl,
//   this.videoUrl,
//   this.audioUrl,
//   this.documenntUrl,
//   this.reactions,
//   this.replies,
//   });
//   ChatModel.fromJson(Map<String,dynamic>json){
//     if(json["id"] is String){
//       id= json["id"];
//     }
//       if(json["message"] is String){
//       message= json["messages"];
//     }
//         if(json["senderName"] is String){
//       senderName= json["senderName"];
//     }
//       if(json["senderId"] is String){
//       senderId= json["senderId"];
//     }
//         if(json["receiverId"] is String){
//       reactions= json["receiverId"];

//     }
//       if(json["timestamp"] is String){
//       timestamp= json["timestamp"];

//     }
//            if(json["readStatus"] is String){
//       readStatus= json["readStatus"];

//     }
//       if(json["imageUrl"] is String){
//       imageUrl= json["imageUrl"];

//     }
//         if(json["videoUrl"] is String){
//       videoUrl= json["videoUrl"];

//     }
//          if(json["audioUrl"] is String){
//       audioUrl= json["audioUrl"];

//     }
//       if(json["documenntUrl"] is String){
//       documenntUrl= json["documenntUrl"];

//     }
//         if(json["reactions"] is List){
//       reactions= json["reactions"]== null ? null :List<String>.from(json["reactions"]);

//     }
//             if(json["replies"] is List){
//            replies= json["replies"] ?? [];

//     }

//   }
// Map<String ,dynamic>toJson(){
//   final Map<String,dynamic>_data =<String,dynamic>{};
//   _data["id"]= id;
//   _data["message"]= message;
//   _data["senderName"]=senderName;
//   _data["senderId"]=senderId;
//   _data["receiverId"]= receiverId;
//   _data["timestamp"]=timestamp;
//   _data["readStatus"]=readStatus;
//   _data["imageUrl"]= imageUrl;
//   _data["videoUrl"]= videoUrl;
//   _data["audioUrl"]= audioUrl;
//   _data["documenntUrl"]= documenntUrl;
//   if (reactions !=null) {
//     _data["reactions"]=reactions;
//   }
//    if (replies !=null) {
//     _data["replies"]=replies;
//   }
//   return _data;
// }
// }
class ChatModel {
  String? id;
  String? message;
  String? senderName;
  String? senderId;
  String? receiverId;
  String? timestamp;
  String? readStatus;
  String? imageUrl;
  String? videoUrl;
  String? audioUrl;
  String? documentUrl;
  List<String>? reactions;
  List<dynamic>? replies;

  ChatModel({this.id, this.message, this.senderName,
   this.senderId, this.receiverId, this.timestamp,
    this.readStatus, this.imageUrl, this.videoUrl, 
    this.audioUrl, this.documentUrl, this.reactions, this.replies});

  ChatModel.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    message = json["message"];
    senderName = json["senderName"];
    senderId = json["senderId"];
    receiverId = json["receiverId"];
    timestamp = json["timestamp"];
    readStatus = json["readStatus"];
    imageUrl = json["imageUrl"];
    videoUrl = json["videoUrl"];
    audioUrl = json["audioUrl"];
    documentUrl = json["documentUrl"];
    reactions = json["reactions"] == null ? null : List<String>.from(json["reactions"]);
    replies = json["replies"] ?? [];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> _data = <String, dynamic>{};
    _data["id"] = id;
    _data["message"] = message;
    _data["senderName"] = senderName;
    _data["senderId"] = senderId;
    _data["receiverId"] = receiverId;
    _data["timestamp"] = timestamp;
    _data["readStatus"] = readStatus;
    _data["imageUrl"] = imageUrl;
    _data["videoUrl"] = videoUrl;
    _data["audioUrl"] = audioUrl;
    _data["documentUrl"] = documentUrl;
    if(reactions != null) {
      _data["reactions"] = reactions;
    }
    if(replies != null) {
      _data["replies"] = replies;
    }
    return _data;
  }
}
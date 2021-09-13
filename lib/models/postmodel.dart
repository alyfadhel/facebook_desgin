class PostModel
{
  String? name,text,profileImage;
  List<String>?images ;
  int? time,like,comments ;
  PostModel({
    this.text,
    this.name,
    this.images,
    this.time,
    this.profileImage,
    this.comments,
    this.like
  }) ;
}
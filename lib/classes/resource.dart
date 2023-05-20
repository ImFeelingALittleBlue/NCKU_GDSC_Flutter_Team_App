class Resource {
  String index;
  String title; //想要分享的主標題
  String? imageUrl; //想要插入的圖片
  String? resourceLink; //分享資源的連結

  Resource(
      {required this.index,
      required this.title,
      this.imageUrl,
      this.resourceLink});
}

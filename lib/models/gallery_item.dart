class GalleryItem {
  final String id;
  final String imageUrl;
  final DateTime uploadedAt;
  
  GalleryItem({
    required this.id,
    required this.imageUrl,
    required this.uploadedAt,
  });
  
  factory GalleryItem.fromJson(Map<String, dynamic> json) {
    return GalleryItem(
      id: json['id'],
      imageUrl: json['image_url'],
      uploadedAt: DateTime.parse(json['uploaded_at']),
    );
  }
  
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'image_url': imageUrl,
      'uploaded_at': uploadedAt.toIso8601String(),
    };
  }
}

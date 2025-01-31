import 'package:flutter/material.dart';
import '../models/gallery_item.dart';

class GalleryProvider with ChangeNotifier {
  final List<GalleryItem> _galleryItems = [];

  List<GalleryItem> get galleryItems => _galleryItems;

  void addGalleryItem(GalleryItem item) {
    _galleryItems.add(item);
    notifyListeners();
  }

  void removeGalleryItem(String id) {
    _galleryItems.removeWhere((item) => item.id == id);
    notifyListeners();
  }

  // Additional methods like fetching from API can be added
}

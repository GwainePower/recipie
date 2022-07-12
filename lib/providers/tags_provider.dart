import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/models/Errors/tags_provider_exception.dart';
import '../data/parse_repo/tags_repo.dart';
import '../data/models/tag.dart';

final TagsProvider = StateNotifierProvider<TagsNotifier, List<Tag>>(
    (ref) => TagsNotifier(TagsRepo()));

class TagsNotifier extends StateNotifier<List<Tag>> {
  TagsNotifier(this._tagsRepo) : super([]);
  final TagsRepo _tagsRepo;

  bool _isLoading = false;

  bool _tagsLoaded = false;

  Future<void> fetchTags() async {
    if (_isLoading) return;
    final List<Tag> loadedTags = [];
    _isLoading = true;
    try {
      final parseObjects = await _tagsRepo.getData();
      for (var object in parseObjects) {
        loadedTags.add(Tag.fromParseObject(object));
      }
      state = [...loadedTags];
    } on TagsProviderException catch (e) {
      print(e.toString());
      state = [...state];
      _tagsLoaded = true;
    } finally {
      _isLoading = false;
    }
  }

  Future<List<Tag>> findByIds(List<String> tagsIds) async {
    if (!_tagsLoaded) {
      await fetchTags();
    }
    final List<Tag> foundTags = [];
    for (String tagId in tagsIds) {
      foundTags.add(state.firstWhere((tag) => tagId == tag.objectId));
    }
    return foundTags;
  }

  void clearTags() {
    state = [];
    _tagsLoaded = false;
  }
}

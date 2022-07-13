import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/models/Errors/tags_provider_exception.dart';
import '../data/parse_repo/tags_repo.dart';
import '../data/models/tag.dart';

final tagsProvider = StateNotifierProvider<TagsNotifier, AsyncValue<List<Tag>>>(
    (ref) => TagsNotifier(TagsRepo()));

class TagsNotifier extends StateNotifier<AsyncValue<List<Tag>>> {
  TagsNotifier(this._tagsRepo) : super(const AsyncData([]));
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
      state = AsyncData([...loadedTags]);
      _tagsLoaded = true;
    } on TagsProviderException catch (e) {
      print(e.toString());
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
      foundTags.add(state.value!.firstWhere((tag) => tagId == tag.objectId));
    }
    return foundTags;
  }

  void clearTags() {
    state = const AsyncData([]);
    _tagsLoaded = false;
  }
}

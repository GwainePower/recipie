import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/parse_repo/tags_repo.dart';
import '../data/models/tag.dart';

final _repositoryProvider = Provider<TagsRepo>(
  (ref) => TagsRepo(),
);

class TagsNotifier extends StateNotifier<List<Tag>> {
  TagsNotifier() : super([]);

  void addTags(List<Tag> tags) => state = [...tags];

  void clearTagsList() => state = [];
}

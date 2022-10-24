import 'package:rick_and_morty_guide/src/core/data/model/character_model.dart';

abstract class ICharactersDataSource {
  Future<List<CharacterModel>> getCharacters({int page = 0});
}

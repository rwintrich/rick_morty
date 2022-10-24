import 'package:dartz/dartz.dart';

import '../entities/character_entity.dart';

abstract class ICharactersRepository {
  Future<Either<dynamic, List<Character>>> getCharacters({int page});
}

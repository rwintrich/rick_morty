import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_guide/src/app_provider.dart';
import 'package:rick_and_morty_guide/src/core/data/model/character_model.dart';

import 'package:rick_and_morty_guide/src/modules/home/data/datasources/characters_data_source.dart';

import '../domain/entities/character_entity.dart';
import '../domain/repositories/i_characters_repository.dart';
import 'datasources/i_characters_data_source.dart';

class CharactersRepository implements ICharactersRepository {
  final ICharactersDataSource _dataSource = getIt<CharactersDataSource>();

  // CharactersRepository({required ICharactersDataSource dataSource})
  //     : _dataSource = dataSource;

  @override
  Future<Either<Exception, List<Character>>> getCharacters(
      {int page = 0}) async {
    try {
      final List<CharacterModel> characters =
          await _dataSource.getCharacters(page: page);
      return Right(characters.map((char) => char.toEntity()).toList());
    } catch (e) {
      return Left(Exception(e.toString()));
    }
  }
}

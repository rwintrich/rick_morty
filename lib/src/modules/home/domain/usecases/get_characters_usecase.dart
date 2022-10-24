import 'package:dartz/dartz.dart';
import 'package:rick_and_morty_guide/src/modules/home/domain/entities/character_entity.dart';

import '../../../../app_provider.dart';

import '../repositories/i_characters_repository.dart';

class GetCharactersUsecase {
  final ICharactersRepository _repository = getIt<ICharactersRepository>();

  // GetCharactersUsecase({required CharactersRepository repository})
  //     : _repository = repository;

  Future<Either<dynamic, List<Character>>> call({int page = 0}) async {
    return _repository.getCharacters(page: page);
  }
}

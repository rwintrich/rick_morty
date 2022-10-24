import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:rick_and_morty_guide/src/app_provider.dart';
import 'package:rick_and_morty_guide/src/core/utils/enums/page_state_enum.dart';
import 'package:rick_and_morty_guide/src/modules/home/domain/entities/character_entity.dart';
import 'package:rick_and_morty_guide/src/modules/home/domain/repositories/i_characters_repository.dart';
import 'package:rick_and_morty_guide/src/modules/home/domain/usecases/get_characters_usecase.dart';

class MockCharacterRepository extends Mock implements ICharactersRepository {}

void main() {
  late MockCharacterRepository mockRepository;
  late GetCharactersUsecase usecase;
  final ICharactersRepository _repository = getIt<ICharactersRepository>();
  setUp(() {
    mockRepository = MockCharacterRepository();
    usecase = GetCharactersUsecase();
  });
  final tPage = 1;
  final tCharacters = [
    Character(
      id: 1,
      name: 'Morty',
      status: "alive",
      gender: EnumGender.male,
      type: 'Human',
      species: 'Human',
      origin: "Earth",
      location: "Test",
      episodes: 1,
      image: 'https://rickandmortyapi.com/api/character/avatar/5.jpeg',
    )
  ];

  test('should return list of characters when requested with offset', () async {
    final result = await usecase.call(page: tPage);

    expect(result, equals(Right(tCharacters)));
  });
}

import 'package:dio/dio.dart';
import 'package:rick_and_morty_guide/src/app_provider.dart';
import 'package:rick_and_morty_guide/src/core/data/model/character_model.dart';
import 'package:rick_and_morty_guide/src/core/utils/consts.dart';
import 'package:rick_and_morty_guide/src/modules/home/presentation/controller/home_controller.dart';

import 'i_characters_data_source.dart';

class CharactersDataSource implements ICharactersDataSource {
  final Dio _client = getIt<Dio>();

  @override
  Future<List<CharacterModel>> getCharacters({int page = 0}) async {
    var response;

    try {
      response = await _client
          .get(Constants.endPoint, queryParameters: {'page': page});

      List data = response.data['results'];

      getIt<HomeController>().totalPages ??= response.data['info']['pages'];

      if (response.statusCode == 200) {
        return List.generate(
            data.length, (index) => CharacterModel.fromMap(data[index]));
      } else {
        throw Exception(response.data);
      }
    } on DioError catch (_) {
      Exception(response.data);

      rethrow;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}

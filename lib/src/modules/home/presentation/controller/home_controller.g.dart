// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on _HomeControllerBase, Store {
  Computed<List<Character>>? _$favoriteCharactersComputed;

  @override
  List<Character> get favoriteCharacters => (_$favoriteCharactersComputed ??=
          Computed<List<Character>>(() => super.favoriteCharacters,
              name: '_HomeControllerBase.favoriteCharacters'))
      .value;
  Computed<List<Character>>? _$charactersComputed;

  @override
  List<Character> get characters => (_$charactersComputed ??=
          Computed<List<Character>>(() => super.characters,
              name: '_HomeControllerBase.characters'))
      .value;

  late final _$_charactersAtom =
      Atom(name: '_HomeControllerBase._characters', context: context);

  @override
  List<Character> get _characters {
    _$_charactersAtom.reportRead();
    return super._characters;
  }

  @override
  set _characters(List<Character> value) {
    _$_charactersAtom.reportWrite(value, super._characters, () {
      super._characters = value;
    });
  }

  late final _$_pageAtom =
      Atom(name: '_HomeControllerBase._page', context: context);

  @override
  int get _page {
    _$_pageAtom.reportRead();
    return super._page;
  }

  @override
  set _page(int value) {
    _$_pageAtom.reportWrite(value, super._page, () {
      super._page = value;
    });
  }

  late final _$searchAtom =
      Atom(name: '_HomeControllerBase.search', context: context);

  @override
  String get search {
    _$searchAtom.reportRead();
    return super.search;
  }

  @override
  set search(String value) {
    _$searchAtom.reportWrite(value, super.search, () {
      super.search = value;
    });
  }

  late final _$controllerStateAtom =
      Atom(name: '_HomeControllerBase.controllerState', context: context);

  @override
  EnumControllerState get controllerState {
    _$controllerStateAtom.reportRead();
    return super.controllerState;
  }

  @override
  set controllerState(EnumControllerState value) {
    _$controllerStateAtom.reportWrite(value, super.controllerState, () {
      super.controllerState = value;
    });
  }

  late final _$listStateAtom =
      Atom(name: '_HomeControllerBase.listState', context: context);

  @override
  EnumListState get listState {
    _$listStateAtom.reportRead();
    return super.listState;
  }

  @override
  set listState(EnumListState value) {
    _$listStateAtom.reportWrite(value, super.listState, () {
      super.listState = value;
    });
  }

  late final _$filtersAtom =
      Atom(name: '_HomeControllerBase.filters', context: context);

  @override
  Filter get filters {
    _$filtersAtom.reportRead();
    return super.filters;
  }

  @override
  set filters(Filter value) {
    _$filtersAtom.reportWrite(value, super.filters, () {
      super.filters = value;
    });
  }

  late final _$getCharactersAsyncAction =
      AsyncAction('_HomeControllerBase.getCharacters', context: context);

  @override
  Future<void> getCharacters() {
    return _$getCharactersAsyncAction.run(() => super.getCharacters());
  }

  late final _$pipelineAsyncAction =
      AsyncAction('_HomeControllerBase.pipeline', context: context);

  @override
  Future<void> pipeline() {
    return _$pipelineAsyncAction.run(() => super.pipeline());
  }

  late final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase', context: context);

  @override
  dynamic handleTapFavorite(int id) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.handleTapFavorite');
    try {
      return super.handleTapFavorite(id);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setSearchText(String value) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setSearchText');
    try {
      return super.setSearchText(value);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic handleFilter(Filter filter) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.handleFilter');
    try {
      return super.handleFilter(filter);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
search: ${search},
controllerState: ${controllerState},
listState: ${listState},
filters: ${filters},
favoriteCharacters: ${favoriteCharacters},
characters: ${characters}
    ''';
  }
}

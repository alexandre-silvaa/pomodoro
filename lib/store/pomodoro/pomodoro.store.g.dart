// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pomodoro.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PomodoroStore on _PomodoroStore, Store {
  late final _$workTimeAtom =
      Atom(name: '_PomodoroStore.workTime', context: context);

  @override
  int get workTime {
    _$workTimeAtom.reportRead();
    return super.workTime;
  }

  @override
  set workTime(int value) {
    _$workTimeAtom.reportWrite(value, super.workTime, () {
      super.workTime = value;
    });
  }

  late final _$breakTimeAtom =
      Atom(name: '_PomodoroStore.breakTime', context: context);

  @override
  int get breakTime {
    _$breakTimeAtom.reportRead();
    return super.breakTime;
  }

  @override
  set breakTime(int value) {
    _$breakTimeAtom.reportWrite(value, super.breakTime, () {
      super.breakTime = value;
    });
  }

  late final _$_PomodoroStoreActionController =
      ActionController(name: '_PomodoroStore', context: context);

  @override
  void incrementTime(String type) {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.incrementTime');
    try {
      return super.incrementTime(type);
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void decrementTime(String type) {
    final _$actionInfo = _$_PomodoroStoreActionController.startAction(
        name: '_PomodoroStore.decrementTime');
    try {
      return super.decrementTime(type);
    } finally {
      _$_PomodoroStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
workTime: ${workTime},
breakTime: ${breakTime}
    ''';
  }
}

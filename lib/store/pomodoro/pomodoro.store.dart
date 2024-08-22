import 'dart:async';

import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

enum TypeInterval { work, rest }

abstract class _PomodoroStore with Store {
  @observable
  bool started = false;
  @observable
  int minutes = 25;
  @observable
  int seconds = 0;
  @observable
  int workTime = 25;
  @observable
  int restTime = 5;
  @observable
  TypeInterval typeInterval = TypeInterval.work;

  Timer? timer;

  @action
  void start() {
    started = true;
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (minutes == 0 && seconds == 0) {
        _changeInterval();
      }
      if (minutes > 0 && seconds == 0) {
        seconds = 59;
        minutes--;
      }
      if (seconds > 0) {
        seconds--;
      }
    });
  }

  @action
  void stop() {
    started = false;
    timer?.cancel();
  }

  @action
  void restart() {
    stop();
    minutes = isWorking() ? workTime : restTime;
    seconds = 0;
  }

  @action
  void incrementTime(TypeInterval type) {
    if (type == TypeInterval.work) {
      workTime++;
      if (isWorking()) restart();
    }
    if (type == TypeInterval.rest) {
      restTime++;
      if (!isWorking()) restart();
    }
  }

  @action
  void decrementTime(TypeInterval type) {
    if (type == TypeInterval.work && workTime > 1) {
      workTime--;
      if (isWorking()) restart();
    }
    if (type == TypeInterval.rest && restTime > 1) {
      restTime--;
      if (!isWorking()) restart();
    }
  }

  bool isWorking() {
    return typeInterval == TypeInterval.work;
  }

  void _changeInterval() {
    seconds = 0;

    if (isWorking()) {
      typeInterval = TypeInterval.rest;
      minutes = restTime;
      return;
    }
    if (!isWorking()) {
      typeInterval = TypeInterval.work;
      minutes = workTime;
      return;
    }
  }
}

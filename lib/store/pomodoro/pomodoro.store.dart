import 'package:mobx/mobx.dart';

part 'pomodoro.store.g.dart';

class PomodoroStore = _PomodoroStore with _$PomodoroStore;

abstract class _PomodoroStore with Store {
  @observable
  int workTime = 25;

  @observable
  int breakTime = 5;

  @action
  void incrementTime(String type) {
    if (type == 'work') workTime++;
    if (type == 'break') breakTime++;
  }

  @action
  void decrementTime(String type) {
    if (type == 'work') workTime--;
    if (type == 'break') breakTime--;
  }
}

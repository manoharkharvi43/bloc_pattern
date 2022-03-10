import 'package:equatable/equatable.dart';

abstract class JokeEvent extends Equatable{
  const JokeEvent();
}

class LoadJokeEvent  extends  JokeEvent {
  @override
  List<Object?> get props => [];
}
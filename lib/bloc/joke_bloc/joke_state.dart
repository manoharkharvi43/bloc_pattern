import 'package:bloc_pattern/data/model/joke_model.dart';
import 'package:equatable/equatable.dart';

abstract class Jokestate extends Equatable {}

class JokeLoadingState extends Jokestate {
  @override
  List<Object?> get props => [];
}

class JokeLoadedState extends Jokestate {
  final JokeModel joke;
  JokeLoadedState(this.joke);

  @override
  List<Object?> get props => [joke];
}

class JokeErrorState extends Jokestate {
  final String error;
  JokeErrorState(this.error);

  @override
  List<Object?> get props => [error];
}

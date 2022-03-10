import 'package:bloc_pattern/bloc/joke_bloc/joke_events.dart';
import 'package:bloc_pattern/bloc/joke_bloc/joke_state.dart';
import 'package:bloc_pattern/data/repositories/joke_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class JokeBloc extends Bloc<JokeEvent, Jokestate> {
  var jokeRepository = JokeRepository();

  JokeBloc(this.jokeRepository) : super(JokeLoadingState()) {
    on((event, emit) async {
      emit(JokeLoadingState());
      try {
        final joke = await jokeRepository.getJokes();
        emit(JokeLoadedState(joke));
      } catch (e) {
        emit(JokeErrorState(e.toString()));
      }
    });
  }
}

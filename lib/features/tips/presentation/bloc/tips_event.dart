part of 'tips_bloc.dart';

abstract class TipsEvent extends Equatable {
  const TipsEvent();

  @override
  List<Object> get props => [];
}

class GetTipsEvent extends TipsEvent {
  final GetTipsQuery? query;

  const GetTipsEvent({this.query});
  @override
  List<Object> get props => [query!];
}

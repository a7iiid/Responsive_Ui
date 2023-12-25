import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_state.dart';

class BlocCubit extends Cubit<BlocState> {
  BlocCubit() : super(BlocInitial());
}

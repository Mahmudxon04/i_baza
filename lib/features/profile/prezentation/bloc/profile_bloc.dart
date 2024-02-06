import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../core/profile_status/status.dart';
import '../../../../core/setup_injector/setup_locator.dart';
import '../../../authentication/data/model/authenticated_user.dart';


part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc() : super(ProfileState(status: ProfileStatus.pure)) {
    on<GetData>((event, emit) async {
      emit(
        state.copyWith(
          status: ProfileStatus.loading,
        ),
      );
      AuthenticatedUserModel data =
          await HiveRepository.getData() as AuthenticatedUserModel;
      print("Data=======>> $data");
      emit(
        state.copyWith(
          status: ProfileStatus.succes,
          authenticatedUser: data,
        ),
      );
    });
    on<SetData>((event, emit) async {
      print("Come here");
      await HiveRepository.putData(event.fish, event.address, event.imgurl);
      AuthenticatedUserModel data = await HiveRepository.getData();
      print("data put ====> $data");
      emit(
        state.copyWith(
          status: ProfileStatus.pure,
          authenticatedUser: data,
        ),
      );
    });
  }
}

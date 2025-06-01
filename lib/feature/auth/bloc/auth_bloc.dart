import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:trackcore/feature/auth/data/auth_repo.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository authRepository;

  AuthBloc({required this.authRepository}) : super(const AuthState()) {
    on<CheckAuthStatus>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.loading));
      try {
        final isLoggedIn = await authRepository.isLoggedIn();
        if (isLoggedIn) {
          final email = await authRepository.getUserEmail();
          emit(state.copyWith(
            status: AuthStatus.authenticated,
            email: email,
          ));
        } else {
          emit(state.copyWith(status: AuthStatus.unauthenticated));
        }
      } catch (e) {
        emit(state.copyWith(
          status: AuthStatus.failure,
          error: e.toString(),
        ));
      }
    });

    on<LoginEvent>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.loading));

      try {
        final success =
            await authRepository.loginUser(event.email, event.password);
        if (success) {
          emit(state.copyWith(status: AuthStatus.authenticated));
        } else {
          emit(state.copyWith(
            status: AuthStatus.failure,
            error: 'Invalid email or password',
          ));
        }
      } catch (e) {
        emit(state.copyWith(
          status: AuthStatus.failure,
          error: e.toString(),
        ));
      }
    });
    on<LogoutEvent>((event, emit) async {
      emit(state.copyWith(status: AuthStatus.loading));

      try {
        authRepository.logout();
        emit(state.copyWith(status: AuthStatus.unauthenticated));
      } catch (e) {
        emit(state.copyWith(status: AuthStatus.failure, error: e.toString()));
      }
    });

    on<AuthEvent>((event, emit) async {
      await event.map(
        checkAuthStatus: (_) async {
          bool isLoggedIn = await authRepository.isLoggedIn();
          if (isLoggedIn) {
            String? email = await authRepository.getUserEmail();
            if (email != null) {
              emit(state.copyWith(status: AuthStatus.authenticated));
            } else {
              emit(state.copyWith(status: AuthStatus.unauthenticated));
            }
          } else {
            emit(state.copyWith(status: AuthStatus.unauthenticated));
          }
        },
        login: (e) async {
          await authRepository.saveUserEmail(e.email);
          emit(state.copyWith(status: AuthStatus.authenticated));
        },
        logout: (_) async {
          await authRepository.logout();
          emit(state.copyWith(status: AuthStatus.authenticated));
        },
      );
    });
  }
}

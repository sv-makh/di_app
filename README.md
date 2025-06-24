# DI

## scopes

### root scope

- AuthBloc
- Talker
- SettingsBloc
- возможно LCColors
- сервисы

### app scope

- остальные блоки

## сделать

- класс DI

```dart
final _getIt = GetIt.instance;

class DI {
  static void setupRootDI() {
    _getIt.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl());
    ...
  }

  static void setupAppDI() {
    _getIt.pushNewScope();
    
    _getIt.registerFactory<UserProfileBloc>(
        () => UserProfileBloc(_getIt<SomeService>()));
    ...
  }

  static void disposeAppScope() {
    _getIt.popScope();
  }
}
```

- сервисы, использующиеся в блоках - переделать как параметры этих блоков
- вызов setupRootDI() - в main.dart, setupAppDI() - при логине, disposeAppScope() - при логауте
- провайдить блоки следующим образом

```dart
        BlocProvider(
          create: (_) => _getIt.get<AuthBloc>(),
        ),
```
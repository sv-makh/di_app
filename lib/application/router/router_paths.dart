const _eStr = "";

enum RouterPaths {
  loginScreen(
    dest: "/login",
    path: "/login",
    name: "login",
    label: _eStr,
  ),
  appScreen(
    dest: "/app",
    path: "/app",
    name: "app",
    label: _eStr,
  );

  final String path;
  final String name;
  final String dest;
  final String label;

  const RouterPaths({
    required this.path,
    required this.name,
    required this.dest,
    required this.label,
  });


}
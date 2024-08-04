import "dart:io";
import "package:path/path.dart";

Directory getConfigDir() => Directory(join(
      Platform.environment["XDG_CONFIG_HOME"] ??
          (Platform.environment["HOME"] ?? join("~", ".config")),
      "quados",
    ));
File getPackagesFile() => File(join(getConfigDir().path, "packages.dart"));
File getConfigFile() => File(join(getConfigDir().path, "config.dart"));
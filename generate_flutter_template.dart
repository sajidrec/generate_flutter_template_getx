import 'dart:io';
import "contents/app_route_contents.dart";
import "contents/app_page_contents.dart";
import "contents/main_file_contents.dart";
import "contents/home_binding_contents.dart";
import "contents/home_page_controller_contents.dart";
import "contents/home_page_content.dart";

Future<void> main() async {
  // Delete lib folder if exists
  final libPointer = Directory("lib/");
  if (libPointer.existsSync()) {
    libPointer.deleteSync(recursive: true);
  }

  // create folders
  List<String> folders = [
    "lib/app/core/constants",
    "lib/app/core/theme",
    "lib/app/core/utils",
    "lib/app/core/values",

    "lib/app/core/data/models",
    "lib/app/core/data/datasources",
    "lib/app/core/data/repositories",
    "lib/app/core/data/providers",
    "lib/app/core/domain/entities",
    "lib/app/core/domain/repositories",
    "lib/app/core/domain/usecases",
    "lib/app/core/services",

    "lib/app/modules/home_page/data/models",
    "lib/app/modules/home_page/data/datasources",
    "lib/app/modules/home_page/data/repositories",
    "lib/app/modules/home_page/data/providers",

    "lib/app/modules/home_page/domain/entities",
    "lib/app/modules/home_page/domain/repositories",
    "lib/app/modules/home_page/domain/usecases",

    "lib/app/modules/home_page/presentation/bindings",
    "lib/app/modules/home_page/presentation/controllers",
    "lib/app/modules/home_page/presentation/views",

    "lib/app/global_widgets",
    "lib/app/middleware",
    "lib/app/routes",
  ];

  for (String path in folders) {
    final dir = Directory(path);
    dir.createSync(recursive: true);
  }

  // create necessary files

  var file = File("lib/app/routes/app_pages.dart");
  file.createSync(recursive: true);
  file.writeAsStringSync(AppPageContents.content);

  file = File("lib/app/routes/app_routes.dart");
  file.createSync(recursive: true);
  file.writeAsStringSync(AppRouteContents.content);

  file = File("lib/main.dart");
  file.createSync(recursive: true);
  file.writeAsStringSync(MainFileContents.content);

  file = File(
    "lib/app/modules/home_page/presentation/bindings/home_binding.dart",
  );
  file.createSync(recursive: true);
  file.writeAsStringSync(HomeBindingContents.content);

  file = File(
    "lib/app/modules/home_page/presentation/controllers/home_page_controller.dart",
  );
  file.createSync(recursive: true);
  file.writeAsStringSync(HomePageControllerContents.content);

  file = File("lib/app/modules/home_page/presentation/views/home_page.dart");
  file.createSync(recursive: true);
  file.writeAsStringSync(HomePageContent.content);

  // finally delete unnecessary template generation files

  final dir = Directory("contents");
  dir.deleteSync(recursive: true);

  file = File("generate_flutter_template.dart");
  file.deleteSync();

  print(
    "Clean Architecture template generated and all the unnecessary files removed.",
  );
}

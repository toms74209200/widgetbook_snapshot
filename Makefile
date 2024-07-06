PROJECT_DIR	=	./widgetbook_snapshot

${PROJECT_DIR}/lib/widgetboo.directories.g.dart:
	cd ${PROJECT_DIR} && flutter pub run build_runner build --delete-conflicting-outputs

.PHONY: widgetbook

widgetbook: ${PROJECT_DIR}/lib/widgetboo.directories.g.dart
	cd ${PROJECT_DIR} && flutter run -t lib/widgetbook.dart

${PROJECT_DIR}/build/web/index.html: ${PROJECT_DIR}/lib/widgetboo.directories.g.dart
	cd ${PROJECT_DIR} && flutter build web -t lib/widgetbook.dart

.PHONY: web

web: ${PROJECT_DIR}/build/web/index.html
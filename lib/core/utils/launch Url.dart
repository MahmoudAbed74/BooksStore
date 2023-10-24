import 'package:booklystore_app/core/utils/Snackbar%20custome.dart';
import 'package:dartz/dartz.dart';
import 'package:url_launcher/url_launcher.dart';

Future<Either<SnackBarCustom, dynamic>> launchURLCoustome(context,
    {required String url}) async {
  Uri uri = Uri.parse(url);
  if (await canLaunchUrl(uri)) {
    return right((await launchUrl(uri)));
  } else {
    return left(const SnackBarCustom());
  }
}

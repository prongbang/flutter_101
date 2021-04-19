/// How to use
/// class FeatureNamePage extends StatelessWidget {
///   Widget build(BuildContext context) {
///     final MultipleArguments arguments = context.routeArguments<MultipleArguments>();
///     if (arguments == null) Navigator.of(context).pop();
///     return widget(
///       ...
///     )
///   }
/// }
class MultipleArguments {
  String data1;
  String data2;

  MultipleArguments(this.data1, this.data2);
}

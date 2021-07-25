import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:markdown/markdown.dart' as md;
import 'package:flutter_markdown/flutter_markdown.dart';

class MdTextfield extends StatelessWidget {
  // assetString = "assets/md/example.md"
  final String string;
  // dk this stylesheet wat 7 lai
  final MarkdownStyleSheet? styleSheet;

  const MdTextfield({
    Key? key,
    required this.string,
    this.styleSheet,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Markdown(
      data: string,
      styleSheet: styleSheet,
  
      extensionSet: md.ExtensionSet(
        md.ExtensionSet.gitHubWeb.blockSyntaxes,
        [md.EmojiSyntax(), ...md.ExtensionSet.gitHubWeb.inlineSyntaxes],
      ),
      selectable: true,
    );
  }
}


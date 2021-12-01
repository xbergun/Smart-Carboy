// ignore_for_file: prefer_const_constructors

import 'package:bixos_project/feature/credential/view/widget/credential_body.dart';
import 'package:flutter/material.dart';

class CredentialPage extends StatelessWidget {
  const CredentialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CredentialBody(),
    );
  }
}

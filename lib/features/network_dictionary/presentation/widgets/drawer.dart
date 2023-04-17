import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/data/service_locator.dart';
import '../../../create_pdf/presentaion/bloc/pdf_bloc.dart';
import '../../../create_pdf/presentaion/create_pdf_page.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          Container(
            height: 140,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          // InkWell(
          //   onTap: () {
          //     Navigator.of(context).pop();
          //     Navigator.pushNamed(context, '/locationPage');
          //   },
          //   child: const ListTile(
          //     leading: Icon(Icons.language),
          //     title: Text(
          //       'Definition from api',
          //       style: TextStyle(),
          //     ),
          //   ),
          // ),
          // ListTile(
          //   title: const Text('Eng_Uzb'),
          //   trailing: Switch(
          //     value: true,
          //     onChanged: (value) {
          //       //TODO
          //     },
          //   ),
          // ),
          InkWell(
            onTap: () {
              Navigator.of(context).pop();
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => BlocProvider.value(
                      value: sl<PdfBloc>(),
                      child: const CreatePdfPage(),
                    ),
                  ));
            },
            child: const ListTile(
              leading: Icon(Icons.picture_as_pdf),
              title: Text(
                'Create pdf',
                style: TextStyle(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

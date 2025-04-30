import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/updates/status_bloc.dart';
import 'package:whatsapp_clone/features/home/presentation/bloc/local/updates/status_state.dart';
import 'package:whatsapp_clone/features/home/presentation/widgets/updates/status_scroll_widget.dart';

class HomeUpdatesPage extends StatelessWidget {
  const HomeUpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();

    return Scaffold(
        body: SafeArea(child:
            BlocBuilder<StatusBloc, StatusState>(builder: (context, state) {
          final statusList = state.statusList;
          return Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.kH,
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 15),
                    child: Text(
                      "Status",
                      style: style.blackBold20,
                    ),
                  ),
                  StatusScrollWidget(
                    statusList: statusList,
                  ),
                  30.kH,
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15.0, right: 15.0, bottom: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Chanels",
                          style: style.blackBold20,
                        ),
                        Container(
                          height: 30,
                          width: 85,
                          decoration: BoxDecoration(
                              color: kGrey5,
                              borderRadius: BorderRadius.circular(25)),
                          child: Center(
                            child: Text(
                              "Explore",
                              style: style.blackMedium16,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                bottom: 95,
                right: 22,
                child: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: kGrey5, borderRadius: BorderRadius.circular(18)),
                  child:const Padding(
                      padding:  EdgeInsets.all(8.0),
                      child: Icon(Icons.edit)),
                ),
              )
            ],
          );
        })));
  }
}

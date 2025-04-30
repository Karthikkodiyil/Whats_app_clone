import 'package:flutter/material.dart';
import 'package:whatsapp_clone/core/constants/constants.dart';
import 'package:whatsapp_clone/core/utils/app_color.dart';
import 'package:whatsapp_clone/core/utils/app_size.dart';
import 'package:whatsapp_clone/core/utils/app_style.dart';
import 'package:whatsapp_clone/features/home/domain/enitity/status_entity.dart';

class StatusScrollWidget extends StatelessWidget {
  const StatusScrollWidget({
    super.key,
    required this.statusList,
  });

  final List<StatusEntity> statusList;

  @override
  Widget build(BuildContext context) {
    AppStyle style = AppStyle();
    return SizedBox(
      height: 135,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: statusList.length + 1,
          itemBuilder: (context, index) {
            if (index == 0) {
              return SizedBox(
                child: Row(
                  children: [
                    15.kW,
                    Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5),
                      child: Container(
                        height: 135,
                        width: 90,
                        decoration: BoxDecoration(
                          color: kGrey5,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                  backgroundImage: AssetImage(profile)),
                            ),
                            const Spacer(),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 5.0),
                                child: Text(
                                  "Add status",
                                  style: style.blackMedium14,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5),
                child: Container(
                  height: 135,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: NetworkImage(
                              statusList[index - 1].status.first["status"]),
                          fit: BoxFit.fill)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: kPrimary, width: 2)),
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              backgroundImage: statusList[index - 1].dp == ""
                                  ? const AssetImage(profile)
                                  : NetworkImage(statusList[index - 1].dp),
                            ),
                          ),
                        ),
                      ),
                      const Spacer(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 5.0, right: 5, bottom: 5),
                          child: Text(
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            statusList[index - 1].name,
                            style: style.whiteMedium13,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
          }),
    );
  }
}
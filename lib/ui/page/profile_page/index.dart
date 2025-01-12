import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:spajam/ui/widgets/helper.dart';


Widget providerCard(
  String providerImage,
  String providerName,
  String memberImage,
  String memberName,
  String memberSubName,
  ) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 18.0),
  child: Card(
    elevation: 2.0,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.fromLTRB(8.0, 4.0, 0, 0),
                child: Row(
                  children: <Widget>[
                    Image.network(providerImage,
                      width: 24,
                      height: 24,
                    ),
                    space(width: 8),
                    Text(
                      providerName,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                  ],
                )
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(8.0, 16.0, 0, 4.0),
                child: Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(memberImage).image,
                        )
                      ),
                    ),
                    space(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          memberName,
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey,
                          ),
                        ),
                        space(height: 8),
                        Text(
                          memberSubName,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.grey,
                          ),
                        ),
                      ] 
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: Icon(
              FontAwesomeIcons.externalLinkAlt,
              size: 21.0,
              color: Colors.grey,
            ),
          )
        ],
      )
    ),
  ),
);


Widget baseInfoCard(
  ) => Padding(
  padding: const EdgeInsets.symmetric(horizontal: 18.0),
  child: Card(
    elevation: 2.0,
    child: Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '苗字都 名前那世（ﾐｮｳｼﾞﾄ ﾅﾏｴﾀﾞﾖ）',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              space(height: 4),
              Text(
                '職種： 開発',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
              space(height: 4),
              Text(
                'メディアシステム部\n/メディカルケアグループ\n/ケアチーム',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.grey,
                ),
              ),
            ] 
          ),
        )
      ],
    ),
  ),
);
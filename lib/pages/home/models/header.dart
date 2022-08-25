// ignore_for_file: avoid_unnecessary_containers, unused_element

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nubank/controllers/controller_home_page.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 9),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              _profile(), _options()
            
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          _welcome()
        ],
      ),
    );
  }

  _profile() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(left: 20, top: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          color: Colors.black12,
        ),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              MdiIcons.accountOutline,
            )),
      ),
    );
  }

  _options() {
    return Row(
      children: [
        GetBuilder<ControllerHomePage>(
            init: ControllerHomePage(),
            builder: (controllerHomePage) {
              return IconButton(
                  onPressed: () => controllerHomePage.showValue(),
                  icon: Icon(controllerHomePage.eyesValue
                      ? MdiIcons.eyeOutline
                      : MdiIcons.eyeOff));
            }),
        IconButton(
            onPressed: () {}, icon: const Icon(MdiIcons.helpCircleOutline)),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.person_add_outlined)),
      ],
    );
  }

  _welcome() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20, left: 20),
      child: const Text(
        'Olá, Bem Vindo(a)',
        style: TextStyle(
            fontSize: 20,
            color: Color.fromARGB(255, 68, 75, 75)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:gomoon_app/utils/app_images.dart';
import 'package:gomoon_app/widget/custom_dropdown_button.dart';

class HomePage extends StatelessWidget{
 late double _deviceHeight, _deviceWidth;

  HomePage({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body:SafeArea(child: Container(
        width: _deviceWidth,
          height: _deviceHeight,
        padding: EdgeInsets.symmetric(horizontal: _deviceWidth *0.05),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _pageTitle(),
                _bookRideWidget(),
              ],
            ),
            Align(
              alignment: Alignment.center,
                child: _astroImageWidget()),
          ],
        ),
      ),
      ),
  );
  }

  Widget _pageTitle(){
    return const Text('TravelMate',
    style: TextStyle(
      color: Colors.white,
      fontSize: 70,
      fontWeight: FontWeight.w800
    ),);
  }

  Widget _astroImageWidget(){
 return  Container(
   height: _deviceHeight*0.50,
    width: _deviceWidth*0.65,
  decoration: const BoxDecoration(
    image: DecorationImage(
      fit:BoxFit.contain,
      image: AssetImage(
          AppImages.moon
      ),
    ),
  ),
);
  }
  Widget _bookRideWidget(){
    return Container(
      height: _deviceHeight*0.25,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],

    ),);
  }

  Widget _destinationDropDownWidget(){
return Padding(
  padding: const EdgeInsets.only(bottom: 20), // Add top padding
  child: CustomDropDownButtonClass(values:const [
      'james web station',
      'Preneure Station',
    'cold station'

      ], width: _deviceWidth),
);
  }
  Widget _travellersInformationWidget(){
    return Padding(
      padding: const EdgeInsets.only(bottom: 20), // Add top padding
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomDropDownButtonClass(
              values:const [
            '1',
            '2',
            '3',
            '4',
          ], width: _deviceWidth*0.40,
          ),
          CustomDropDownButtonClass(
            values:const [
              'economy',
              'Business',
              'First class',
              'private',
            ], width: _deviceWidth*0.40,
          ),
        ],
      ),
    );
  }

  Widget _rideButton(){
    return  Padding(
      padding: const EdgeInsets.only(bottom: 10), // Add top padding
      child: Container(
        width: _deviceWidth,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:BorderRadius.circular(10), ),
        child: MaterialButton(onPressed: (){},
          child: const Text('Book Ride',style: TextStyle(
            color: Colors.black,
          ),),),
      ),
    );
  }
}
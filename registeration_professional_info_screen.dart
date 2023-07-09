import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:toritora/exports.dart';
import 'widgets/listgroupfiftyo_item_widget.dart';
import 'package:provider/provider.dart';

class RegisterationProfessionalInfoScreen extends ConsumerStatefulWidget {
  const RegisterationProfessionalInfoScreen({super.key});

  static const String routeName = '/registerProfessionalInfo';

  @override
  ConsumerState<RegisterationProfessionalInfoScreen> createState() =>
      _RegisterationProfessionalInfoScreen();
}

class _RegisterationProfessionalInfoScreen
    extends ConsumerState<RegisterationProfessionalInfoScreen> {
  TextEditingController group2980Controller = TextEditingController();

  TextEditingController usernameController = TextEditingController();

  TextEditingController heightController = TextEditingController();

  TextEditingController experienceController = TextEditingController();
  TextEditingController achievementsController = TextEditingController();
  TextEditingController shootingPriceHourController = TextEditingController();
  TextEditingController transportationController = TextEditingController();
  TextEditingController snsController = TextEditingController();
  TextEditingController websiteController = TextEditingController();
  TextEditingController selfIntroductionController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  String? inputValueUsername;
  String? inputValueHeight;
  String? inputValueExperience;
  String? inputValueMainArea;
  String? inputValueGenre;
  String? inputValuePriceHour;

  PickedFile? _image;

  bool mandatory1 = false;
  bool mandatory2 = false;
  bool mandatory3 = false;
  bool mandatory4 = false;
  bool mandatory5 = false;


  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _image = pickedImage;
    });
  }

  var profileItemTextCity = [
    'Hokkaido',
    'Aomori',
    'Iwate',
    'Miyagi',
    'Akita',
    'Yamagata',
    'Fukushima',
    'Ibaraki',
    'Tochigi',
    'Gunma',
    'Saitama',
    'Chiba',
    'Tokyo',
    'Kanagawa',
    'Niigata',
    'Toyama',
    'Ishikawa',
    'Fukui',
    'Yamanashi',
    'Nagano',
    'Gifu',
    'Shizuoka',
    'Aichi',
    'Mie',
    'Shiga',
    'Kyoto',
    'Osaka',
    'Hyogo',
    'Nara',
    'Wakayama',
    'Tottori',
    'Shimane',
    'Okayama',
    'Hiroshima',
    'Yamaguchi',
    'Tokushima',
    'Kagawa',
    'Ehime',
    'Kochi',
    'Fukuoka',
    'Saga',
    'Nagasaki',
    'Kumamoto',
    'Oita',
    'Miyazaki',
    'Kagoshima',
    'Okinawa',
  ];

  var filterItemListCitys = [];
  List<String> selectedItemsCitys = [];

  TextEditingController textEditingCityController = TextEditingController();

  TextEditingController textEditingGenreController = TextEditingController();

  var profileItemText = [
    KString.pretty,
    KString.cute,
    KString.natural,
    KString.art,
    KString.clean,
    KString.cool,
    KString.dark,
    KString.others,
  ];

  var filterItemListGenres = [];


  @override
  void initState(){
    super.initState();
    setState(() {
       mandatory1 = false;
       mandatory2 = false;
       mandatory3 = false;
       mandatory4 = false;
       mandatory5 = false;
    });

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var filterController = ref.watch(filterControllerProvider);
      filterController.addList();
    });
  }

  @override
  Widget build(BuildContext context) {
    var submit = ref.watch(personalInfoControllerMethodsProvider);
    var filterController = ref.watch(filterControllerProvider);
    return SafeArea(
        child: Scaffold(
            backgroundColor: KColor.whiteA700,
            resizeToAvoidBottomInset: true,
            appBar: CustomAppBar(
                height: getVerticalSize(84),
                leadingWidth: 66,
                leading: AppbarImage(
                    height: getSize(42),
                    width: getSize(42),
                    svgPath: KAssets.imgArrowleft,
                    margin: getMargin(left: 24, top: 27, bottom: 15),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Info"),
                styleType: Style.bgShadowBlack90014),
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Container(
                        constraints: BoxConstraints(
                          minHeight: getVerticalSize(1860),
                        ),
                        width: double.infinity,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            // Tambahkan konten lainnya di sini
                            Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Container(
                                          decoration: AppDecoration.fillGray5042,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Container(
                                                    height: getVerticalSize(102),
                                                    width: double.maxFinite,
                                                    child: Stack(
                                                        alignment: Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                              imagePath: KAssets
                                                                  .imgRectangle1812,
                                                              height:
                                                              getVerticalSize(
                                                                  102),
                                                              width:
                                                              getHorizontalSize(
                                                                  428),
                                                              alignment:
                                                              Alignment.center),
                                                          Align(
                                                              alignment:
                                                              Alignment.center,
                                                              child: Container(
                                                                  height:
                                                                  getVerticalSize(
                                                                      33),
                                                                  width:
                                                                  getHorizontalSize(
                                                                      378),
                                                                  child: Stack(
                                                                      alignment:
                                                                      Alignment
                                                                          .center,
                                                                      children: [
                                                                        // CustomImageView(
                                                                        //     svgPath:
                                                                        //         KAssets
                                                                        //             .imgGroup2952,
                                                                        //     height: getVerticalSize(
                                                                        //         32),
                                                                        //     width: getHorizontalSize(
                                                                        //         378),
                                                                        //     alignment:
                                                                        //         Alignment.center),
                                                                        Align(
                                                                            alignment:
                                                                            Alignment
                                                                                .center,
                                                                            child: Text(
                                                                                "Personal Info",
                                                                                overflow:
                                                                                TextOverflow.ellipsis,
                                                                                textAlign: TextAlign.left,
                                                                                style: AppStyle.txtPoppinsSemiBold22WhiteA700))
                                                                      ])))
                                                        ])),
                                                Container(
                                                    height: getVerticalSize(79),
                                                    width: double.maxFinite,
                                                    padding: getPadding(
                                                        left: 39,
                                                        top: 18,
                                                        right: 39,
                                                        bottom: 18),
                                                    decoration: AppDecoration
                                                        .outlineBlack9000f,
                                                    child: Stack(
                                                        alignment:
                                                        Alignment.topLeft,
                                                        children: [
                                                          Align(
                                                              alignment: Alignment
                                                                  .topCenter,
                                                              child: Padding(
                                                                  padding:
                                                                  getPadding(
                                                                      top: 14),
                                                                  child: SizedBox(
                                                                      width:
                                                                      getHorizontalSize(
                                                                          348),
                                                                      child: Divider(
                                                                          height:
                                                                          getVerticalSize(
                                                                              1),
                                                                          thickness:
                                                                          getVerticalSize(
                                                                              1),
                                                                          color: KColor
                                                                              .blueGray100)))),
                                                          Align(
                                                              alignment:
                                                              Alignment.topLeft,
                                                              child: Padding(
                                                                  padding:
                                                                  getPadding(
                                                                      top: 14),
                                                                  child: SizedBox(
                                                                      width:
                                                                      getHorizontalSize(
                                                                          128),
                                                                      child: Divider(
                                                                          height:
                                                                          getVerticalSize(
                                                                              1),
                                                                          thickness:
                                                                          getVerticalSize(
                                                                              1),
                                                                          color: KColor
                                                                              .orange400)))),
                                                          Align(
                                                              alignment:
                                                              Alignment.center,
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                                  children: [
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                            1),
                                                                        child: Column(
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  width: getSize(23),
                                                                                  padding: getPadding(left: 9, top: 3, right: 9, bottom: 3),
                                                                                  decoration: AppDecoration.txtOutlineOrange60056.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder11),
                                                                                  child: Text("1", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium1018)),
                                                                              Padding(
                                                                                  padding: getPadding(top: 1),
                                                                                  child: Text("Personal Info", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold874))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                            42,
                                                                            top: 1),
                                                                        child: Column(
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  width: getSize(23),
                                                                                  padding: getPadding(left: 8, top: 3, right: 8, bottom: 3),
                                                                                  decoration: AppDecoration.txtOutlineOrange60056.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder11),
                                                                                  child: Text("2", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium1018)),
                                                                              Padding(
                                                                                  padding: getPadding(top: 1),
                                                                                  child: Text("Professional Info ", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsSemiBold874))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                            43,
                                                                            top: 1,
                                                                            bottom:
                                                                            2),
                                                                        child: Column(
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  width: getSize(23),
                                                                                  padding: getPadding(left: 8, top: 3, right: 8, bottom: 3),
                                                                                  decoration: AppDecoration.txtOutlineIndigo50.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder11),
                                                                                  child: Text("3", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular1018)),
                                                                              Padding(
                                                                                  padding: getPadding(top: 1),
                                                                                  child: Text("Verification", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular739))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            left:
                                                                            35,
                                                                            top: 1,
                                                                            bottom:
                                                                            1),
                                                                        child: Column(
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment.start,
                                                                            children: [
                                                                              Container(
                                                                                  width: getSize(23),
                                                                                  padding: getPadding(left: 8, top: 3, right: 8, bottom: 3),
                                                                                  decoration: AppDecoration.txtOutlineIndigo50.copyWith(borderRadius: BorderRadiusStyle.txtRoundedBorder11),
                                                                                  child: Text("4", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular1018)),
                                                                              Padding(
                                                                                  padding: getPadding(top: 1),
                                                                                  child: Text("Questionnarie", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular739))
                                                                            ]))
                                                                  ]))
                                                        ]))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            CustomTextFormField(
                                                focusNode: FocusNode(),
                                                controller: group2980Controller,
                                                hintText:
                                                "Please enter all details correctly",
                                                variant: TextFormFieldVariant
                                                    .OutlineGray50014,
                                                padding: TextFormFieldPadding
                                                    .PaddingT15_3,
                                                fontStyle: TextFormFieldFontStyle
                                                    .PoppinsMedium14),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25,
                                                    top: 22,
                                                    right: 26),
                                                child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 21,
                                                              bottom:
                                                              20),
                                                          child: Column(
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                              mainAxisAlignment:
                                                              MainAxisAlignment.start,
                                                              children: [
                                                                RichText(
                                                                    text: TextSpan(children: [
                                                                      TextSpan(text: "Profile Picture ", style: TextStyle(color: KColor.blueGray900, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w500)),
                                                                      TextSpan(text: "*", style: TextStyle(color: KColor.redA700, fontSize: getFontSize(16), fontFamily: 'Poppins', fontWeight: FontWeight.w500))
                                                                    ]),
                                                                    textAlign: TextAlign.left),
                                                                Padding(
                                                                    padding: getPadding(top: 16),
                                                                    child: Text("This will be displayed on your profile", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular12.copyWith(letterSpacing: getHorizontalSize(0.24))))
                                                              ])),
                                                      GestureDetector(
                                                        onTap: _pickImage,
                                                        child: Card(
                                                          clipBehavior: Clip.antiAlias,
                                                          elevation: 0,
                                                          margin: EdgeInsets.all(0),
                                                          color: Colors.grey[100],
                                                          shape: RoundedRectangleBorder(
                                                            side: BorderSide(
                                                              color: Colors.grey[900]!.withOpacity(0.05),
                                                              width: getHorizontalSize(1),
                                                            ),
                                                            borderRadius: BorderRadius.circular(getHorizontalSize(50)),
                                                          ),
                                                          child: Container(
                                                            height: getSize(100),
                                                            width: getSize(100),
                                                            padding: EdgeInsets.all(10),
                                                            decoration: BoxDecoration(
                                                              border: Border.all(
                                                                color: Colors.grey[900]!.withOpacity(0.05),
                                                                width: getHorizontalSize(1),
                                                              ),
                                                              borderRadius: BorderRadius.circular(getHorizontalSize(50)),
                                                              image: _image != null
                                                                  ? DecorationImage(
                                                                image: FileImage(File(_image!.path)),
                                                                fit: BoxFit.cover,
                                                              ) : null,
                                                            ),
                                                            child: _image == null
                                                                ? CustomImageView(
                                                              svgPath: KAssets.imgAntdesignclou,
                                                              height: getSize(50),
                                                              width: getSize(50),
                                                              alignment: Alignment.center,
                                                            )
                                                                : null,
                                                          ),
                                                        ),
                                                      )
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25, top: 21, right: 24),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(children: [
                                                            TextSpan(
                                                                text: "Username",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .gray600,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        10),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "*",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .redA700,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                          ]),
                                                          textAlign:
                                                          TextAlign.left),
                                                      CustomTextFormField(
                                                          focusNode: FocusNode(),
                                                          controller:
                                                          usernameController,
                                                          validator: (value) {
                                                            if (inputValueUsername == null || inputValueUsername!.isEmpty) {
                                                              return 'Field username is required!';
                                                            }

                                                            return null;
                                                          },
                                                          onChanged: (value) {
                                                            setState(() {
                                                              inputValueUsername = value;
                                                            });
                                                          },
                                                          hintText: "Please enter your username",
                                                          margin: getMargin(top: 9),
                                                          variant: TextFormFieldVariant
                                                              .OutlineRed,
                                                          fontStyle: TextFormFieldFontStyle
                                                              .PoppinsRegular12Gray600,
                                                          prefix: Container(
                                                              margin: getMargin(
                                                                  left: 15,
                                                                  top: 16,
                                                                  right: 14,
                                                                  bottom: 16),
                                                              // decoration: BoxDecoration(
                                                              //     color: KColor
                                                              //         .gray50001),
                                                              child: CustomImageView(
                                                                  svgPath: KAssets
                                                                      .imgUserGray50001)),
                                                          prefixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                              getVerticalSize(
                                                                  48))),
                                                      // Padding(
                                                      //     padding: getPadding(
                                                      //         left: 4, top: 9),
                                                      //     child: const Text(
                                                      //               "Username is required!",
                                                      //               overflow: TextOverflow.ellipsis,
                                                      //               textAlign: TextAlign.left,
                                                      //               style: TextStyle(
                                                      //                 fontFamily: 'Poppins',
                                                      //                 fontWeight: FontWeight.w400,
                                                      //                 fontSize: 10,
                                                      //                 color: Colors.red, // Ubah warna teks menjadi merah
                                                      //               ),
                                                      //             )
                                                      // )
                                                    ])
                                            ),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25, top: 24, right: 24),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(children: [
                                                            TextSpan(
                                                                text: "Height",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "(in cms) ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .gray600,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        10),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "*",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .redA700,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                          ]),
                                                          textAlign:
                                                          TextAlign.left),
                                                      CustomTextFormField(
                                                          focusNode: FocusNode(),
                                                          controller:
                                                          heightController,
                                                          validator: (value) {
                                                            if (inputValueHeight == null || inputValueHeight!.isEmpty) {
                                                              return 'Field height is required!';
                                                            }

                                                            return null;
                                                          },
                                                          onChanged: (value) {
                                                            setState(() {
                                                              inputValueHeight = value;
                                                            });
                                                          },
                                                          hintText: "Enter Value",
                                                          fontStyle: TextFormFieldFontStyle
                                                              .PoppinsRegular12Gray600,
                                                          margin:
                                                          getMargin(top: 10),
                                                          padding:
                                                          TextFormFieldPadding
                                                              .PaddingT15_2,
                                                          suffix: Container(
                                                              margin: getMargin(
                                                                  left: 12,
                                                                  top: 16,
                                                                  right: 24,
                                                                  bottom: 16),
                                                              child: CustomImageView(
                                                                  svgPath: KAssets
                                                                      .imgLocation)),
                                                          suffixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                              getVerticalSize(
                                                                  48)))
                                                    ])
                                            ),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25, top: 22, right: 24),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(children: [
                                                            TextSpan(
                                                                text: "Experience",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "(in years) ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .gray600,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        10),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "*",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .redA700,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                          ]),
                                                          textAlign:
                                                          TextAlign.left),
                                                      CustomTextFormField(
                                                          focusNode: FocusNode(),
                                                          validator: (value) {
                                                            if (inputValueExperience == null || inputValueExperience!.isEmpty) {
                                                              return 'Field experience is required!';
                                                            }
                                                            return null;
                                                          },
                                                          onChanged: (value) {
                                                            setState(() {
                                                              inputValueExperience = value;
                                                            });
                                                          },
                                                          controller:
                                                          experienceController,
                                                          hintText: "Enter Value",
                                                          variant: mandatory2 ?
                                                          TextFormFieldVariant
                                                              .OutlineRed : TextFormFieldVariant
                                                              .OutlineGray5006c_1,
                                                          fontStyle: TextFormFieldFontStyle
                                                              .PoppinsRegular12Gray600,
                                                          margin:
                                                          getMargin(top: 11),
                                                          padding:
                                                          TextFormFieldPadding
                                                              .PaddingT15_2,
                                                          suffix: Container(
                                                              margin: getMargin(
                                                                  left: 12,
                                                                  top: 16,
                                                                  right: 24,
                                                                  bottom: 16),
                                                              child: CustomImageView(
                                                                  svgPath: KAssets
                                                                      .imgLocation)),
                                                          suffixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                              getVerticalSize(
                                                                  48))),
                                                      // Padding(
                                                      //     padding: getPadding(
                                                      //         left: 4, top: 9),
                                                      //     child: Text(
                                                      //       "Experience is required!",
                                                      //       overflow: TextOverflow.ellipsis,
                                                      //       textAlign: TextAlign.left,
                                                      //       style: TextStyle(
                                                      //         fontFamily: 'Poppins',
                                                      //         fontWeight: FontWeight.w400,
                                                      //         fontSize: 10,
                                                      //         color: mandatory2 ? Colors.red : Colors.white, // Ubah warna teks menjadi merah
                                                      //       ),
                                                      //     )
                                                      // )

                                                    ])),

                                            Padding(
                                                padding: getPadding(
                                                    left: 25, top: 21, right: 24),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(children: [
                                                            TextSpan(
                                                                text: "Main areas of activity",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "*",
                                                                style: TextStyle(
                                                                    color:
                                                                    KColor.redA700,
                                                                    fontSize:
                                                                    getFontSize(14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                          ]),
                                                          textAlign: TextAlign.left),
                                                      Container(
                                                        width:
                                                        width ?? double.maxFinite,
                                                        margin: getMargin(top: 12),
                                                        child: TextFormField(
                                                          controller: textEditingCityController,
                                                          validator: (value) {
                                                            if (inputValueMainArea == null || inputValueMainArea!.isEmpty) {
                                                              return 'Field main area activity is required!';
                                                            }
                                                            return null;
                                                          },
                                                          onChanged: (value) {
                                                            setState(() {
                                                              inputValueMainArea = value;
                                                            });
                                                          },
                                                          focusNode: FocusNode(),
                                                          readOnly: true,
                                                          style: TextStyle(
                                                            color: KColor.gray900,
                                                            fontSize: getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily: 'Poppins',
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                          onTap: () async {
                                                            showModalBottomSheet(
                                                              context: context,
                                                              builder:
                                                                  (BuildContext context) {
                                                                return Container(
                                                                  child: StatefulBuilder(
                                                                    builder: (BuildContext context, StateSetter setState) {
                                                                      return SizedBox(
                                                                        width: double.maxFinite,
                                                                        child: Container(
                                                                          width: double.maxFinite,
                                                                          padding: getPadding(
                                                                            left: 26,
                                                                            top: 15,
                                                                            right: 26,
                                                                            bottom: 15,
                                                                          ),
                                                                          decoration: AppDecoration.fillGray100.copyWith(
                                                                            borderRadius: BorderRadiusStyle.customBorderTL24,
                                                                          ),
                                                                          child: Column(
                                                                            mainAxisSize: MainAxisSize.min,
                                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.center,
                                                                                child: Container(
                                                                                  height: getVerticalSize(4),
                                                                                  width: getHorizontalSize(32),
                                                                                  decoration: BoxDecoration(
                                                                                    color: KColor.gray200,
                                                                                    borderRadius: BorderRadius.circular(getHorizontalSize(2)),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: getPadding(top: 26, right: 3),
                                                                                child: Row(
                                                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      "Main area of activity",
                                                                                      overflow: TextOverflow.ellipsis,
                                                                                      textAlign: TextAlign.left,
                                                                                      style: AppStyle.txtPoppinsSemiBold16,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding: getPadding(top: 2, bottom: 3),
                                                                                      child: InkWell(
                                                                                        onTap: () {
                                                                                          Navigator.pop(context);
                                                                                        },
                                                                                        child: Text(
                                                                                          "Close",
                                                                                          overflow: TextOverflow.ellipsis,
                                                                                          textAlign: TextAlign.left,
                                                                                          style: AppStyle.txtPoppinsMedium12,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding: getPadding(top: 15),
                                                                                child: Divider(
                                                                                  height: getVerticalSize(2),
                                                                                  thickness: getVerticalSize(2),
                                                                                  color: KColor.gray200,
                                                                                ),
                                                                              ),
                                                                              Expanded(
                                                                                child: ListView.builder(
                                                                                  shrinkWrap: true,
                                                                                  physics: ClampingScrollPhysics(),
                                                                                  scrollDirection: Axis.vertical,
                                                                                  itemCount: 1, // Set the itemCount to 1 for the GridView.builder
                                                                                  itemBuilder: (BuildContext context, int index) {
                                                                                    return GridView.builder(
                                                                                      shrinkWrap: true,
                                                                                      physics: ClampingScrollPhysics(),
                                                                                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                                                        crossAxisCount: 3,
                                                                                        childAspectRatio: 3 / 1.8,
                                                                                      ),
                                                                                      itemCount: profileItemTextCity.length,
                                                                                      itemBuilder: (BuildContext ctx, index) {
                                                                                        return InkWell(
                                                                                          splashColor: Colors.transparent,
                                                                                          highlightColor: Colors.transparent,
                                                                                          onTap: () {
                                                                                            if (filterItemListCitys.contains(profileItemTextCity[index])) {
                                                                                              setState(() {
                                                                                                filterItemListCitys.remove(profileItemTextCity[index]);
                                                                                                textEditingCityController.text = filterItemListCitys.join(", ");
                                                                                              });
                                                                                            } else if (filterItemListCitys.length < 3) {
                                                                                              setState(() {
                                                                                                filterItemListCitys.add(profileItemTextCity[index]);
                                                                                                textEditingCityController.text = filterItemListCitys.join(", ");
                                                                                              });
                                                                                            }
                                                                                          },
                                                                                          child: Card(
                                                                                            color: filterItemListCitys.contains(profileItemTextCity[index].toString())
                                                                                                ? KColor.lightButtonColor
                                                                                                : KColor.whiteColor,
                                                                                            shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(KString.size * Dimens.size1),
                                                                                            ),
                                                                                            child: Stack(
                                                                                              children: [
                                                                                                Container(
                                                                                                  decoration: BoxDecoration(
                                                                                                    borderRadius: BorderRadius.circular(KString.size * Dimens.sizePoint6),
                                                                                                  ),
                                                                                                  child: Padding(
                                                                                                    padding: KString.padding,
                                                                                                    child: Center(
                                                                                                      child: FilterContainer(
                                                                                                        text: profileItemTextCity[index],
                                                                                                        color: filterItemListCitys.contains(profileItemTextCity[index].toString())
                                                                                                            ? KColor.whiteColor
                                                                                                            : KColor.blackColor,
                                                                                                      ),
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ],
                                                                                            ),
                                                                                          ),
                                                                                        );
                                                                                      },
                                                                                    );
                                                                                  },
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      );

                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                              shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(
                                                                    10.0),
                                                              ),
                                                              backgroundColor: Colors.white,
                                                            );
                                                          },
                                                          maxLines: 1,
                                                          decoration: InputDecoration(
                                                            hintText: filterItemListCitys.isNotEmpty ? filterItemListCitys.join(", ") : "Select any 3",
                                                            hintStyle: TextStyle(
                                                              color: filterItemListCitys.isNotEmpty ? KColor.gray900 : Colors.black,
                                                              fontSize: getFontSize(
                                                                12,
                                                              ),
                                                              fontFamily: 'Poppins',
                                                              fontWeight:
                                                              FontWeight.w500,
                                                            ),
                                                            border: OutlineInputBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                getHorizontalSize(
                                                                  5.00,
                                                                ),
                                                              ),
                                                              borderSide: BorderSide(
                                                                color: KColor.gray5006c,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            enabledBorder:
                                                            OutlineInputBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                getHorizontalSize(
                                                                  5.00,
                                                                ),
                                                              ),
                                                              borderSide: BorderSide(
                                                                color: KColor.gray5006c,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                            OutlineInputBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                getHorizontalSize(
                                                                  5.00,
                                                                ),
                                                              ),
                                                              borderSide: BorderSide(
                                                                color: KColor.orange400,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            disabledBorder:
                                                            OutlineInputBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                getHorizontalSize(
                                                                  5.00,
                                                                ),
                                                              ),
                                                              borderSide: BorderSide(
                                                                color: KColor.gray50075,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            suffixIcon: Container(
                                                                margin: getMargin(
                                                                    left: 12,
                                                                    top: 16,
                                                                    right: 20,
                                                                    bottom: 16),
                                                                child: CustomImageView(
                                                                    svgPath: KAssets
                                                                        .imgArrowdown)),
                                                            suffixIconConstraints:
                                                            BoxConstraints(
                                                                maxHeight:
                                                                getVerticalSize(
                                                                    48)),
                                                            fillColor: null,
                                                            filled: false,
                                                            isDense: true,
                                                            contentPadding: getPadding(
                                                                top: 15,
                                                                right: 15,
                                                                bottom: 15,
                                                                left: 15
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      // Padding(
                                                      //     padding: getPadding(
                                                      //         left: 4, top: 9),
                                                      //     child: Text(
                                                      //       "Main Areas of activity is required!",
                                                      //       overflow: TextOverflow.ellipsis,
                                                      //       textAlign: TextAlign.left,
                                                      //       style: TextStyle(
                                                      //         fontFamily: 'Poppins',
                                                      //         fontWeight: FontWeight.w400,
                                                      //         fontSize: 10,
                                                      //         color: mandatory3 ? Colors.red : Colors.white, // Ubah warna teks menjadi merah
                                                      //       ),
                                                      //     )
                                                      // )
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25, top: 21, right: 24),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(children: [
                                                            TextSpan(
                                                                text: "Genre",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "*",
                                                                style: TextStyle(
                                                                    color:
                                                                    KColor.redA700,
                                                                    fontSize:
                                                                    getFontSize(14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                          ]),
                                                          textAlign: TextAlign.left),
                                                      Container(
                                                        width:
                                                        width ?? double.maxFinite,
                                                        margin: getMargin(top: 12),
                                                        child: TextFormField(
                                                          controller: textEditingGenreController,
                                                          validator: (value) {
                                                            if (inputValueGenre == null || inputValueGenre!.isEmpty) {
                                                              return 'Field genre is required!';
                                                            }
                                                            return null;
                                                          },
                                                          onChanged: (value) {
                                                            setState(() {
                                                              inputValueGenre = value;
                                                            });
                                                          },
                                                          focusNode: FocusNode(),
                                                          readOnly: true,
                                                          style: TextStyle(
                                                            color: KColor.gray900,
                                                            fontSize: getFontSize(
                                                              12,
                                                            ),
                                                            fontFamily: 'Poppins',
                                                            fontWeight: FontWeight.w400,
                                                          ),
                                                          onTap: () async {
                                                            showModalBottomSheet(
                                                              context: context,
                                                              builder:
                                                                  (BuildContext context) {
                                                                return Container(
                                                                  child: StatefulBuilder(
                                                                    builder: (BuildContext context, StateSetter setState) {
                                                                      return SizedBox(
                                                                        width: double.maxFinite,
                                                                        child: Container(
                                                                          width: double.maxFinite,
                                                                          padding: getPadding(
                                                                            left: 26,
                                                                            top: 15,
                                                                            right: 26,
                                                                            bottom: 15,
                                                                          ),
                                                                          decoration:
                                                                          AppDecoration
                                                                              .fillGray100
                                                                              .copyWith(
                                                                            borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderTL24,
                                                                          ),
                                                                          child: Column(
                                                                            mainAxisSize:
                                                                            MainAxisSize.min,
                                                                            crossAxisAlignment:
                                                                            CrossAxisAlignment
                                                                                .start,
                                                                            mainAxisAlignment:
                                                                            MainAxisAlignment
                                                                                .start,
                                                                            children: [
                                                                              Align(
                                                                                alignment:
                                                                                Alignment
                                                                                    .center,
                                                                                child: Container(
                                                                                  height:
                                                                                  getVerticalSize(
                                                                                    4,
                                                                                  ),
                                                                                  width:
                                                                                  getHorizontalSize(
                                                                                    32,
                                                                                  ),
                                                                                  decoration:
                                                                                  BoxDecoration(
                                                                                    color: KColor
                                                                                        .gray200,
                                                                                    borderRadius:
                                                                                    BorderRadius
                                                                                        .circular(
                                                                                      getHorizontalSize(
                                                                                        2,
                                                                                      ),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                  top: 26,
                                                                                  right: 3,
                                                                                ),
                                                                                child: Row(
                                                                                  mainAxisAlignment:
                                                                                  MainAxisAlignment
                                                                                      .spaceBetween,
                                                                                  children: [
                                                                                    Text(
                                                                                      "Genre of expertise",
                                                                                      overflow:
                                                                                      TextOverflow
                                                                                          .ellipsis,
                                                                                      textAlign:
                                                                                      TextAlign
                                                                                          .left,
                                                                                      style: AppStyle
                                                                                          .txtPoppinsSemiBold16,
                                                                                    ),
                                                                                    Padding(
                                                                                      padding:
                                                                                      getPadding(
                                                                                        top: 2,
                                                                                        bottom: 3,
                                                                                      ),
                                                                                      child:
                                                                                      InkWell(
                                                                                        onTap:
                                                                                            () {
                                                                                          Navigator.pop(
                                                                                              context);
                                                                                        },
                                                                                        child:
                                                                                        Text(
                                                                                          "Close",
                                                                                          overflow:
                                                                                          TextOverflow.ellipsis,
                                                                                          textAlign:
                                                                                          TextAlign.left,
                                                                                          style: AppStyle
                                                                                              .txtPoppinsMedium12,
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                              Padding(
                                                                                padding:
                                                                                getPadding(
                                                                                  top: 15,
                                                                                ),
                                                                                child: Divider(
                                                                                  height:
                                                                                  getVerticalSize(
                                                                                    2,
                                                                                  ),
                                                                                  thickness:
                                                                                  getVerticalSize(
                                                                                    2,
                                                                                  ),
                                                                                  color: KColor
                                                                                      .gray200,
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                width:
                                                                                getHorizontalSize(
                                                                                  359,
                                                                                ),
                                                                                margin: getMargin(
                                                                                  left: 1,
                                                                                  top: 21,
                                                                                  right: 15,
                                                                                  bottom: 129,
                                                                                ),
                                                                                child: GridView.builder(
                                                                                    shrinkWrap: true,
                                                                                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                                                                                      crossAxisCount: 4,
                                                                                      childAspectRatio: 3 / 1.8,
                                                                                    ),
                                                                                    itemCount: 8,
                                                                                    itemBuilder: (BuildContext ctx, index) {
                                                                                      return InkWell(
                                                                                        splashColor: Colors.transparent,
                                                                                        highlightColor: Colors.transparent,
                                                                                        onTap: () {
                                                                                          if (filterItemListGenres.contains(profileItemText[index])) {
                                                                                            setState(() {
                                                                                              filterItemListGenres.remove(profileItemText[index]);
                                                                                              textEditingGenreController.text = filterItemListGenres.join(", ");
                                                                                            });
                                                                                          } else if (filterItemListGenres.length < 3) {
                                                                                            setState(() {
                                                                                              filterItemListGenres.add(profileItemText[index]);
                                                                                              textEditingGenreController.text = filterItemListGenres.join(", ");
                                                                                            });
                                                                                          }
                                                                                        },
                                                                                        child: Card(
                                                                                          color: filterItemListGenres
                                                                                              .contains(profileItemText[index].toString())
                                                                                              ? KColor.lightButtonColor
                                                                                              : KColor.whiteColor,
                                                                                          shape: RoundedRectangleBorder(
                                                                                              borderRadius: BorderRadius.circular(KString.size*Dimens.size1)),
                                                                                          child: Stack(
                                                                                            children: [
                                                                                              Container(
                                                                                                decoration: BoxDecoration(
                                                                                                    borderRadius: BorderRadius.circular(KString.size*Dimens.sizePoint6)),
                                                                                                child: Padding(
                                                                                                  padding: KString.padding,
                                                                                                  child: Center(
                                                                                                    child: FilterContainer(
                                                                                                      text: profileItemText[index],
                                                                                                      color: filterItemListGenres
                                                                                                          .contains(profileItemText[index]
                                                                                                          .toString())
                                                                                                          ? KColor.whiteColor
                                                                                                          : KColor.blackColor,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ],
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                    }),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      );
                                                                    },
                                                                  ),
                                                                );
                                                              },
                                                              shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                BorderRadius.circular(
                                                                    10.0),
                                                              ),
                                                              backgroundColor: Colors.white,
                                                            );


                                                          },
                                                          maxLines: 1,
                                                          decoration: InputDecoration(
                                                            hintText: filterItemListGenres.isNotEmpty ? filterItemListGenres.join(", ") : "Select any 3",
                                                            hintStyle: TextStyle(
                                                              color: filterItemListGenres.isNotEmpty ? KColor.gray900 : Colors.black,
                                                              fontSize: getFontSize(
                                                                12,
                                                              ),
                                                              fontFamily: 'Poppins',
                                                              fontWeight:
                                                              FontWeight.w400,
                                                            ),
                                                            border: OutlineInputBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                getHorizontalSize(
                                                                  5.00,
                                                                ),
                                                              ),
                                                              borderSide: BorderSide(
                                                                color: KColor.gray50075,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            enabledBorder:
                                                            OutlineInputBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                getHorizontalSize(
                                                                  5.00,
                                                                ),
                                                              ),
                                                              borderSide: BorderSide(
                                                                color: KColor.gray5006c,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            focusedBorder:
                                                            OutlineInputBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                getHorizontalSize(
                                                                  5.00,
                                                                ),
                                                              ),
                                                              borderSide: BorderSide(
                                                                color: KColor.orange400,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            disabledBorder:
                                                            OutlineInputBorder(
                                                              borderRadius:
                                                              BorderRadius.circular(
                                                                getHorizontalSize(
                                                                  5.00,
                                                                ),
                                                              ),
                                                              borderSide: BorderSide(
                                                                color: KColor.gray50075,
                                                                width: 1,
                                                              ),
                                                            ),
                                                            suffixIcon: Container(
                                                                margin: getMargin(
                                                                    left: 12,
                                                                    top: 16,
                                                                    right: 20,
                                                                    bottom: 16),
                                                                child: CustomImageView(
                                                                    svgPath: KAssets
                                                                        .imgArrowdown)),
                                                            suffixIconConstraints:
                                                            BoxConstraints(
                                                                maxHeight:
                                                                getVerticalSize(
                                                                    48)),
                                                            fillColor: null,
                                                            filled: false,
                                                            isDense: true,
                                                            contentPadding: getPadding(
                                                                top: 15,
                                                                right: 15,
                                                                bottom: 15,
                                                                left: 15
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      // Padding(
                                                      //     padding: getPadding(
                                                      //         left: 4, top: 9),
                                                      //     child: Text(
                                                      //       "Genre is required!",
                                                      //       overflow: TextOverflow.ellipsis,
                                                      //       textAlign: TextAlign.left,
                                                      //       style: TextStyle(
                                                      //         fontFamily: 'Poppins',
                                                      //         fontWeight: FontWeight.w400,
                                                      //         fontSize: 10,
                                                      //         color: mandatory4 ? Colors.red : Colors.white, // Ubah warna teks menjadi merah
                                                      //       ),
                                                      //     )
                                                      // )
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25, top: 24, right: 24),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Text("Achievements(if any)",
                                                          overflow:
                                                          TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium14Bluegray900),
                                                      CustomTextFormField(
                                                        focusNode: FocusNode(),
                                                        controller:
                                                        achievementsController,
                                                        hintText: "ABC photo event, photo magazine etc",
                                                        fontStyle: TextFormFieldFontStyle
                                                            .PoppinsRegular12Gray600,
                                                        margin:
                                                        getMargin(top: 10),
                                                        padding:
                                                        TextFormFieldPadding
                                                            .PaddingT15_2,
                                                        // suffix: Container(
                                                        //     margin: getMargin(
                                                        //         left: 12,
                                                        //         top: 16,
                                                        //         right: 24,
                                                        //         bottom: 16),
                                                        //     child: CustomImageView(
                                                        //         svgPath: KAssets
                                                        //             .imgLocation)),
                                                        // suffixConstraints:
                                                        // BoxConstraints(
                                                        //     maxHeight:
                                                        //     getVerticalSize(
                                                        //         48))
                                                      )
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25, top: 24, right: 24),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(children: [
                                                            TextSpan(
                                                                text: "Shooting price per hour* )",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .gray600,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        10),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "*",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .redA700,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                          ]),
                                                          textAlign:
                                                          TextAlign.left),
                                                      CustomTextFormField(
                                                          focusNode: FocusNode(),
                                                          controller:
                                                          shootingPriceHourController,
                                                          validator: (value) {
                                                            if (inputValuePriceHour == null || inputValuePriceHour!.isEmpty) {
                                                              return 'Field shooting price per hour is required!';
                                                            }
                                                            return null;
                                                          },
                                                          onChanged: (value) {
                                                            setState(() {
                                                              inputValuePriceHour = value;
                                                            });
                                                          },
                                                          hintText: "Enter Value",
                                                          fontStyle: TextFormFieldFontStyle
                                                              .PoppinsRegular12Gray600,
                                                          margin:
                                                          getMargin(top: 10),
                                                          padding:
                                                          TextFormFieldPadding
                                                              .PaddingT15_2,
                                                          suffix: Container(
                                                              margin: getMargin(
                                                                  left: 12,
                                                                  top: 16,
                                                                  right: 24,
                                                                  bottom: 16),
                                                              child: CustomImageView(
                                                                  svgPath: KAssets
                                                                      .imgLocation)),
                                                          suffixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                              getVerticalSize(
                                                                  48))),
                                                      // Padding(
                                                      //     padding: getPadding(
                                                      //         left: 4, top: 9),
                                                      //     child: Text(
                                                      //       "Shooting price per hour is required!",
                                                      //       overflow: TextOverflow.ellipsis,
                                                      //       textAlign: TextAlign.left,
                                                      //       style: TextStyle(
                                                      //         fontFamily: 'Poppins',
                                                      //         fontWeight: FontWeight.w400,
                                                      //         fontSize: 10,
                                                      //         color: mandatory5 ? Colors.red : Colors.white, // Ubah warna teks menjadi merah
                                                      //       ),
                                                      //     )
                                                      // )
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25, top: 24, right: 24),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(children: [
                                                            TextSpan(
                                                                text: "Transportation fee*",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .gray600,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        10),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .redA700,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                          ]),
                                                          textAlign:
                                                          TextAlign.left),
                                                      CustomTextFormField(
                                                          focusNode: FocusNode(),
                                                          controller:
                                                          transportationController,
                                                          hintText: "Enter Value",
                                                          fontStyle: TextFormFieldFontStyle
                                                              .PoppinsRegular12Gray600,
                                                          margin:
                                                          getMargin(top: 10),
                                                          padding:
                                                          TextFormFieldPadding
                                                              .PaddingT15_2,
                                                          suffix: Container(
                                                              margin: getMargin(
                                                                  left: 12,
                                                                  top: 16,
                                                                  right: 24,
                                                                  bottom: 16),
                                                              child: CustomImageView(
                                                                  svgPath: KAssets
                                                                      .imgLocation)),
                                                          suffixConstraints:
                                                          BoxConstraints(
                                                              maxHeight:
                                                              getVerticalSize(
                                                                  48)))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25, top: 24, right: 24),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(children: [
                                                            TextSpan(
                                                                text: "SNS Username",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "＊Just put your username",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .gray600,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        11),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .redA700,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                          ]),
                                                          textAlign:
                                                          TextAlign.left),
                                                      CustomTextFormField(
                                                        focusNode: FocusNode(),
                                                        controller:
                                                        snsController,
                                                        hintText: "your username",
                                                        fontStyle: TextFormFieldFontStyle
                                                            .PoppinsRegular12Gray600,
                                                        margin:
                                                        getMargin(top: 10),
                                                        padding:
                                                        TextFormFieldPadding
                                                            .PaddingT15_2,
                                                        // suffix: Container(
                                                        //     margin: getMargin(
                                                        //         left: 12,
                                                        //         top: 16,
                                                        //         right: 24,
                                                        //         bottom: 16),
                                                        //     child: CustomImageView(
                                                        //         svgPath: KAssets
                                                        //             .imgLocation)),
                                                        // suffixConstraints:
                                                        // BoxConstraints(
                                                        //     maxHeight:
                                                        //     getVerticalSize(
                                                        //         48))
                                                      )
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25, top: 24, right: 24),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      RichText(
                                                          text: TextSpan(children: [
                                                            TextSpan(
                                                                text: "Website",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: " ",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "＊Just put your personal website",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .gray600,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        11),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w400)),
                                                            TextSpan(
                                                                text: "",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .blueGray900,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500)),
                                                            TextSpan(
                                                                text: "",
                                                                style: TextStyle(
                                                                    color: KColor
                                                                        .redA700,
                                                                    fontSize:
                                                                    getFontSize(
                                                                        14),
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontWeight:
                                                                    FontWeight
                                                                        .w500))
                                                          ]),
                                                          textAlign:
                                                          TextAlign.left),
                                                      CustomTextFormField(
                                                        focusNode: FocusNode(),
                                                        controller:
                                                        websiteController,
                                                        hintText: "your website",
                                                        fontStyle: TextFormFieldFontStyle
                                                            .PoppinsRegular12Gray600,
                                                        margin:
                                                        getMargin(top: 10),
                                                        padding:
                                                        TextFormFieldPadding
                                                            .PaddingT15_2,
                                                        // suffix: Container(
                                                        //     margin: getMargin(
                                                        //         left: 12,
                                                        //         top: 16,
                                                        //         right: 24,
                                                        //         bottom: 16),
                                                        //     child: CustomImageView(
                                                        //         svgPath: KAssets
                                                        //             .imgLocation)),
                                                        // suffixConstraints:
                                                        // BoxConstraints(
                                                        //     maxHeight:
                                                        //     getVerticalSize(
                                                        //         48))
                                                      )
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25, top: 29, right: 24),
                                                child: Column(
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Text("Self Introduction",
                                                          overflow:
                                                          TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium14Bluegray900),
                                                      CustomTextFormField(
                                                          focusNode: FocusNode(),
                                                          controller:
                                                          selfIntroductionController,
                                                          fontStyle: TextFormFieldFontStyle
                                                              .PoppinsRegular12Gray600,
                                                          hintText:
                                                          "Enter characters upto 0 to 100 words",
                                                          margin:
                                                          getMargin(top: 11),
                                                          padding:
                                                          TextFormFieldPadding
                                                              .PaddingT57,
                                                          textInputAction:
                                                          TextInputAction.done,
                                                          maxLines: 7)
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    left: 25,
                                                    top: 21,
                                                    right: 26),
                                                child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                          getPadding(
                                                              top:
                                                              1),
                                                          child: Text(
                                                              "Add Sub Photos  up to 5 ",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium14)),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom:
                                                              4),
                                                          child: Text(
                                                              "+ Add More",
                                                              overflow:
                                                              TextOverflow
                                                                  .ellipsis,
                                                              textAlign:
                                                              TextAlign
                                                                  .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium12))
                                                    ])),
                                            Align(
                                                alignment: Alignment
                                                    .centerLeft,
                                                child: Padding(
                                                    padding:
                                                    getPadding(
                                                        left: 25,
                                                        top: 7),
                                                    child: Text(
                                                        "Please add images and select their genres",
                                                        overflow:
                                                        TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                        TextAlign
                                                            .left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular10Gray500))),
                                            Padding(
                                              padding: getPadding(left: 25, top: 11, right: 26),
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Flexible(
                                                    flex: 1,
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          padding: getPadding(left: 30, top: 31, right: 30, bottom: 31),
                                                          decoration: AppDecoration.outlineBluegray10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Text("+", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular1531),
                                                              Padding(padding: getPadding(top: 2, bottom: 4), child: Text("Add Image", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular8)),
                                                            ],
                                                          ),
                                                        ),
                                                        CustomButton(
                                                          height: getVerticalSize(25),
                                                          width: getHorizontalSize(105),
                                                          text: "Select Genre",
                                                          margin: getMargin(top: 6),
                                                          variant: ButtonVariant.OutlineOrange400,
                                                          shape: ButtonShape.RoundedBorder3,
                                                          padding: ButtonPadding.PaddingAll5,
                                                          fontStyle: ButtonFontStyle.PoppinsMedium10,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(width: 30),
                                                  Flexible(
                                                    flex: 1,
                                                    child: Column(
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Container(
                                                          padding: getPadding(left: 30, top: 31, right: 30, bottom: 31),
                                                          decoration: AppDecoration.outlineBluegray10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                                                          child: Column(
                                                            mainAxisSize: MainAxisSize.min,
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            children: [
                                                              Text("+", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular1531),
                                                              Padding(padding: getPadding(top: 2, bottom: 4), child: Text("Add Image", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular8)),
                                                            ],
                                                          ),
                                                        ),
                                                        CustomButton(
                                                          height: getVerticalSize(25),
                                                          width: getHorizontalSize(105),
                                                          text: "Select Genre",
                                                          margin: getMargin(top: 6),
                                                          variant: ButtonVariant.OutlineOrange400,
                                                          shape: ButtonShape.RoundedBorder3,
                                                          padding: ButtonPadding.PaddingAll5,
                                                          fontStyle: ButtonFontStyle.PoppinsMedium10,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                        padding: getPadding(left: 30, top: 31, right: 30, bottom: 31),
                                                        decoration: AppDecoration.outlineBluegray10001.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                                                        child: Column(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          children: [
                                                            Text("+", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular1531),
                                                            Padding(padding: getPadding(top: 2, bottom: 4), child: Text("Add Image", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular8)),
                                                          ],
                                                        ),
                                                      ),
                                                      Container(
                                                        margin: getMargin(top: 6),
                                                        padding: getPadding(left: 19, top: 4, right: 19, bottom: 4),
                                                        decoration: AppDecoration.outlineOrange400.copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
                                                        child: Column(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Text("Select Genre", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsMedium10.copyWith(letterSpacing: getHorizontalSize(0.2))),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Container(
                                                width: double.maxFinite,
                                                margin: getMargin(top: 63),
                                                padding: getPadding(
                                                    left: 58,
                                                    top: 39,
                                                    right: 58,
                                                    bottom: 39),
                                                decoration:
                                                AppDecoration.fillWhiteA700,
                                                child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                    children: [
                                                      Expanded(
                                                          child: CustomButton(
                                                              onTap: (){
                                                                onTapArrowleft4(context);
                                                              },
                                                              height:
                                                              getVerticalSize(
                                                                  54),
                                                              text: "Back",
                                                              margin: getMargin(
                                                                  right: 16,
                                                                  bottom: 9),
                                                              padding: ButtonPadding
                                                                  .PaddingAll18)),
                                                      Expanded(
                                                          child: CustomButton(
                                                              height:
                                                              getVerticalSize(
                                                                  54),
                                                              text: "NEXT",
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  bottom: 9),
                                                              onTap: () {
                                                                onTapNext(context);
                                                              },
                                                              variant: ButtonVariant
                                                                  .OutlineTeal300,
                                                              fontStyle: ButtonFontStyle
                                                                  .PoppinsSemiBold14))
                                                    ]))
                                          ]))
                                ])
                          ],
                        ),

                        // height: getVerticalSize(1860),
                        // width: double.maxFinite,
                    )))));
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }

  onTapNext(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      var submit = ref.watch(personalInfoControllerMethodsProvider);
      submit.onTapNext2(
        context,
        username:
        usernameController
            .text,
        height:
        heightController
            .text,
        experience:
        experienceController
            .text,
        introduction:
        selfIntroductionController
            .text,
        activity_1:
        'hokkaido',
        activity_2:
        'aomori',
        achievements:
        achievementsController
            .text,
      );
    }

  }
}


import 'package:shimmer/shimmer.dart';

import '../../../../exports.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../controller/home_controller.dart';
import '../../data/models/get_model_details.dart' as md;

class ProfileView extends ConsumerStatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  ConsumerState<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends ConsumerState<ProfileView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      var modelDetails = ref.watch(homeControllerMethodsProvider);
      modelDetails.getModelDetailsApi(1);
      modelDetails.modelDetailsData;
      updateModelDetails();
    });

  }

  var correspondingModelDetails = {
    'Self introduction': 'Not Available',
    'Active Regions': 'Not Available',
    'Height': 'Not Available',
    'Modelling Exp': 'Not Available',
    'Speciality Genres': 'Not Available',
    'Awards': 'Not Available',
    'Others': 'Not Available',
    'Price Per Hour': 'Not Available',
    'Why did you\n become model:': 'Not Available',
    'Twitter': 'Not Available',
    'Instagram': 'Not Available',
  };
  var userAbout = [
    'Self introduction',
    'Active Regions',
    'Height',
    'Modelling Exp',
    'Speciality Genres',
    'Awards',
    'Others',
    'Price Per Hour',
    'Why did you\n become model:',
    'Twitter',
    'Instagram',
  ];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 1,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  height: 200,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(6))),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(6)),
                    child: Image.network(
                      'https://cdn.shopify.com/s/files/1/1494/5022/t/6/assets/amp-1605515911386-evolution_480x480@2x.JPG?v=1605515912',
                      fit: BoxFit.fill,
                    ),
                  )),
              CommonWidgets().commonSizedBox(20.0),

              ///------------------------------------------------ Badge and name and email  ----------------------------------
              CommonWidgets().badgeNameAndEmail(),
              CommonWidgets().commonSizedBox(20.0),

              ///------------------------------------------------ Shooting mode frequency and Approval time  ----------------------------------
              CommonWidgets().approvedTime(),
              CommonWidgets().commonSizedBox(20.0),

              ///------------------------------------------------ Shooting mode frequency and Approval time ---------------------------------

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 10,
                  child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: userAbout.length,
                      itemBuilder: (context, i) {
                        return
                            // modelDetailsList.model.id==-1? Shimmer.fromColors(
                            //         period: const Duration(seconds: 2),
                            //         baseColor: Colors.grey.withOpacity(0.25),
                            //         highlightColor: Colors.white.withOpacity(0.9),
                            //         child: Container(
                            //             height: KString.size * Dimens.size22,
                            //             width: KString.size * Dimens.size14,
                            //             margin: EdgeInsets.symmetric(
                            //                 horizontal:
                            //                     KString.size * Dimens.sizePoint8),
                            //             decoration: BoxDecoration(
                            //               color: Colors.grey.withOpacity(0.9),
                            //               borderRadius: BorderRadius.all(
                            //                   Radius.circular(KString.size *
                            //                       Dimens.sizePoint8)),
                            //             )),
                            //       )
                            //     :
                            Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            children: [
                              DualTextBar3(
                                text: userAbout[i],
                                text2:
                                    correspondingModelDetails[userAbout[i]] ??
                                        'Not Available',
                              ),
                            ],
                          ),
                        );
                      }),
                ),
              ),
              CommonWidgets().commonSizedBox(20.0),
              DualTextBar3(
                text: 'Gallery',
                text2: '',
              ),
              CommonWidgets().commonSizedBox(20.0),
              GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 3 / 3,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: 6,
                  itemBuilder: (BuildContext ctx, index) {
                    return InkWell(
                      onTap: () {},
                      child: Card(
                        color: KColor.whiteColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Image.network(
                              'https://cdn.shopify.com/s/files/1/1494/5022/t/6/assets/amp-1605515911386-evolution_480x480@2x.JPG?v=1605515912',
                              fit: BoxFit.fill),
                        ),
                      ),
                    );
                  }),
              CommonWidgets().commonSizedBox(20.0),
              DualTextBar3(
                text: 'Thank you message',
                text2: 'View all',
              ),
              CommonWidgets().commonSizedBox(20.0),

              ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 10,
                  itemBuilder: (context, i) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Material(
                        elevation: 6,
                        child: ListTile(
                          title: Text(
                            'Thank you so much for the shoot.she is very nice model',
                            style: TextStyle(
                              color: KColor.blackColor,
                              fontFamily: KFonts.poppinsRegular,
                              fontSize: 14,
                            ),
                          ),
                          trailing: Column(
                            children: [
                              CommonWidgets().commonSizedBox(20.0),
                              Text(
                                '${DateTime.now().year}/${DateTime.now().month}/${DateTime.now().day}',
                                style: TextStyle(
                                  color: KColor.greyColor,
                                  fontFamily: KFonts.poppinsRegular,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ],
          );
        },
      ),
    );
  }

  updateModelDetails() {
    var homeList = ref.watch(homeControllerMethodsProvider);
    var modelDetailsList = homeList.modelDetailsData;
    print(
        '................instaName apaa:${modelDetailsList.user.instagramUserName.toString()}...............');
    correspondingModelDetails['Self introduction'] =
        modelDetailsList.user.introduction ?? '';
    correspondingModelDetails['Active Regions'] = modelDetailsList.user.address;
    correspondingModelDetails['Height'] =
        modelDetailsList.user.height.toString();
    correspondingModelDetails['Modelling Exp'] =
        modelDetailsList.user.experience.toString();
    correspondingModelDetails['Speciality Genres'] =
        modelDetailsList.user.genres ?? '';
    correspondingModelDetails['Awards'] =
        modelDetailsList.user.achievements ?? '';
    // correspondingModelDetails['Others']=modelDetailsList.model.;
    correspondingModelDetails['Price Per Hour'] =
        modelDetailsList.user.pricePerHour ?? '';
    // correspondingModelDetails['Why did you\n become model:']=modelDetailsList.model.;
    correspondingModelDetails['Twitter'] =
        modelDetailsList.user.twitterUserName;
    correspondingModelDetails['Instagram'] =
        modelDetailsList.user.instagramUserName;
    setState(() {});
  }
}

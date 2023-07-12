import 'package:toritora/common/repositories/get_routes/get_routes.dart';
import 'package:toritora/features/home/data/models/get_all_models.dart';
import 'package:toritora/features/home/data/models/get_available_models.dart';
import 'package:toritora/features/home/data/models/new_models.dart';

import '../../../../exports.dart';
import '../../home_visitor/data/models/get_banners.dart' as banners;
import '../data/models/get_model_details.dart' as md;
import '../data/models/get_model_details.dart';

final homeControllerProvider =
    StateNotifierProvider<HomeController, bool>((ref) {
  return HomeController(true);
});

class HomeController extends StateNotifier<bool> {
  HomeController(super.state);

  int id = -1;

  void changeId(newId) {
    id = newId;
  }

  /// --------------------------- change function is for changing the model and kikaku buttons -----------------
  void change(bool value) {
    state = value;
  }
}

/// --------------------------- Home screen api methods and other methods  -----------------

final homeControllerMethodsProvider =
    ChangeNotifierProvider<HomeControllerMethods>((ref) {
  return HomeControllerMethods();
});

class HomeControllerMethods extends ChangeNotifier {
  var isLoading = false;
  final GetRoutes _getRoutes = GetRoutes();

  AllModels? _getAllModels;
  get getAllModels => _getAllModels!;
  List<User> _getAllModelsList = [];
  List<User> get getAllModelsList => _getAllModelsList;

  NewModels? _newModels;
  get newModels => _newModels!;
  List<NewModel> _newModelsList = [];
  List<NewModel> get newModelsList => _newModelsList;

  ModelDetails? _modelDetails;
  get modelDetails => _modelDetails!;
  md.Data _modelDetailsData = md.Data(
      user: md.Model(
          height: -1,
          address: '',
          twitterUserName: '',
          instagramUserName: '',
          experience: -1,
          userName: '',
          id: -1,
          isEmailVerified: false,
          isVerified: false,
          isMobileVerified: false));
  md.Data get modelDetailsData => _modelDetailsData;

  banners.BannerModels? _bannerModels;
  get getBannerModels => _bannerModels;
  List<banners.Datum> _bannerModelsList = [];
  List<banners.Datum> _bannerKikakuList = [];
  List<banners.Datum> get bannerModelsList => _bannerModelsList;
  List<banners.Datum> get bannerKikakuList => _bannerKikakuList;

  AvailableModels? _availableModels;
  get availableModels => _availableModels!;
  List<AvailableModel> _availableModelsList = [];
  List<AvailableModel> get availableModelsList => _availableModelsList;

  getAllModelsApi() async {
    isLoading = true;
    notifyListeners();
    _getAllModels = await _getRoutes.getAllModels();
    if (_getAllModels!.data.users.isNotEmpty) {
      isLoading = false;
      notifyListeners();
      _getAllModelsList = _getAllModels!.data.users;
      notifyListeners();
    } else {
      isLoading = false;
      notifyListeners();
    }
  }

  getNewModelsApi() async {
    isLoading = true;
    notifyListeners();
    _newModels = await _getRoutes.getNewModels();
    if (_newModels!.data.newModels.isNotEmpty) {
      isLoading = false;
      notifyListeners();
      _newModelsList = _newModels!.data.newModels;
      notifyListeners();
    } else {
      isLoading = false;
      notifyListeners();
    }
  }

  getModelDetailsApi(int id) async {
    isLoading = true;
    notifyListeners();
    _modelDetails = await _getRoutes
        .getModelDetails(1); // asking for a default id .... for testing....
    print('...............................................${_modelDetails?.data.user.instagramUserName}');
    if (_modelDetails!.data.user.userName.isNotEmpty) {
      isLoading = false;
      notifyListeners();
      _modelDetailsData = _modelDetails!.data;
      print("isinya apa ${_modelDetailsData.user.instagramUserName}");
      notifyListeners();
    } else {
      isLoading = false;
      notifyListeners();
    }
  }

  getBannersApi() async {
    isLoading = true;
    notifyListeners();
    _bannerModels = await _getRoutes.getBanners();
    if (_bannerModels!.data.isNotEmpty) {
      isLoading = false;
      notifyListeners();
      _bannerModelsList = _bannerModels!.getBannersForModel;
      _bannerKikakuList = _bannerModels!.getBannersForKikaku;
      notifyListeners();
    } else {
      isLoading = false;
      notifyListeners();
    }
  }

  getAvailableModelsApi() async {
    isLoading = true;
    notifyListeners();
    _availableModels = await _getRoutes.getAvailableModels();
    if (_availableModels!.data.availableModels.isNotEmpty) {
      isLoading = false;
      notifyListeners();
      _availableModelsList = _availableModels!.data.availableModels;
      notifyListeners();
    } else {
      isLoading = false;
      notifyListeners();
    }
  }
}

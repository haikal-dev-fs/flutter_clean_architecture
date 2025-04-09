import 'package:my_ca/features/profile/data/datasources/remote_datasource.dart';

void main() async {
  final ProfileRemoteDataSource profileRemoteDataSource = ProfileRemoteDataSourceImplementation();
  var response = await profileRemoteDataSource.getAllUser(1);
  var getUser = await profileRemoteDataSource.getUser(1);

  for (var profile in response) {
    print(profile.toJson());  
  }

  print("SELESAI");
  print(getUser.toJson());
}
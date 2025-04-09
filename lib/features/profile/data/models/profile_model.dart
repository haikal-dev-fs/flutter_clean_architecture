import '../../domain/entities/profile.dart';

class ProfileModel extends Profile {
  final String firstName;
  final String lastName;
  final String avatar;

  const ProfileModel({
    required super.id,
    required super.email,
    required this.firstName,
    required this.lastName,
    required this.avatar,
  }) : super(fullName: '$firstName $lastName', profileImageUrl: avatar);

  // convert map => profile model
  factory ProfileModel.fromJson(Map<String, dynamic> data) {
    return ProfileModel(
      id: data['id'],
      email: data['email'],
      firstName: data['first_name'],
      lastName: data['last_name'],
      avatar: data['avatar'],
    );
  }

  // convert profile model => map
  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "email": email,
      "first_name": firstName,
      "last_name": lastName,
      "avatar": avatar,
    };
  }

  // List<Map> => List<ProfileModel>
  static List<ProfileModel> fromJsonList(List data) {
    if(data.isEmpty) return [];
    return data.map((singleDataProfile) => ProfileModel.fromJson(singleDataProfile)).toList();
  }
}

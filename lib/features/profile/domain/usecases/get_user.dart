import 'package:my_ca/features/profile/domain/entities/profile.dart';
import 'package:my_ca/features/profile/domain/repositories/profile_repository.dart';

class GetUser {
  final ProfileRepository profileRepository;

  const GetUser({required this.profileRepository});

  Future<Profile> execute(int id) async {
    return await profileRepository.getUser(id);
  }
}

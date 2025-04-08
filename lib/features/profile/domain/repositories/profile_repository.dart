import '../entities/profile.dart';

abstract class ProfileRepository {
  Future<List<Profile>> getAllUser(int page);
  Future<Profile> getUser(int id);
}

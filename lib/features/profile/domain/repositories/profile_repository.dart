import 'package:dartz/dartz.dart';
import 'package:my_ca/core/error/failure.dart';

import '../entities/profile.dart';

abstract class ProfileRepository {
  Future<Either<Failure, List<Profile>>> getAllUser(int page); // ada 2 kemungkinan hasil = berhasil ? gagal
  Future<Either<Failure, Profile>> getUser(int id);
}


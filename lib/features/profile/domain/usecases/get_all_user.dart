// File untuk use case get all user

import 'package:dartz/dartz.dart';
import 'package:my_ca/core/error/failure.dart';
import 'package:my_ca/features/profile/domain/entities/profile.dart';
import 'package:my_ca/features/profile/domain/repositories/profile_repository.dart';

class GetAllUser {
  final ProfileRepository porfileRepository;

  const GetAllUser({required this.porfileRepository});

  Future<Either<Failure, List<Profile>>> execute(int page) async {
    return await porfileRepository.getAllUser(page);
  }
}

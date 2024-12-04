// ABSTRACT CLASS ProfileRepo
// DEFINE ALL OPERATIONS THAT IS POSSIBLE IN A PROFILE

import 'package:clothes_e_commerce/auth_operations/profile_user.dart';

abstract class ProfileRepo {
  // fetch a user profile using the user id
  Future<ProfileUser?> fetchUserProfile(String userId);

  // update the user profile - new bio, new profile picture...
  Future<void> updateProfile(ProfileUser updatedProfile);
}

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:innove_final_project/core/network/api_handler/api_error_handler.dart';
import 'package:innove_final_project/core/network/dio/dio_helper.dart';
import 'package:innove_final_project/core/shared/entity/api_error_entity.dart';
import 'package:innove_final_project/features/home/data/entity/home_entity.dart';

class HomeRepo extends Equatable {
  const HomeRepo();

  Future<Either<ApiErrorEntity, HomeEntity>> getData() async{
    try {
      final response=await DioHelper.get( 'home');
      return Right(HomeEntity(description: '',title: ''));
    } catch (e) {
      return Left(ErrorHandler.handleError(e));
    }
  }

  @override
  // TODO: implement props
  List<Object?> get props => [];
}

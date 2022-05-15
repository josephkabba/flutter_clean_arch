// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:clean_arch/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_arch/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_arch/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {
     
    }

void main() {
  
  MockNumberTriviaRepository mockNumberTriviaRepository = MockNumberTriviaRepository();
  GetConcreteNumberTrivia usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);

  const tNumber = 1;
  const tNumberTrivia = NumberTrivia(number: 1, text: "test");

  test("should get trivia for the number from the repository", () async {
    //arrange
    when(mockNumberTriviaRepository.getConcreteNumberTrivia(any))
        .thenAnswer((_) async => const Right(tNumberTrivia));
    //act
    final result = await usecase(const Params(number: tNumber));
    //assert
    expect(result, const Right(tNumberTrivia));
    verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
  });
}

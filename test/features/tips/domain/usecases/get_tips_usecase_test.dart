import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:template_clean_architecture/core/error/error.dart';
import 'package:template_clean_architecture/features/tips/domain/entities/tips_entities.dart';
import 'package:template_clean_architecture/features/tips/domain/usecases/usecase.dart';

import '../../helpers/tips_test_helper.mocks.dart';

void main() {
  late GetTipsUseCase getTipsUseCase;
  late MockTipsRepository mockTipsRepository;

  setUp(() {
    mockTipsRepository = MockTipsRepository();
    getTipsUseCase = GetTipsUseCase(mockTipsRepository);
  });

  var resultGetTips = TipsEntity(
    status: 'success',
    message: '',
    data: ResultTipsEntity(
      currentPage: 1,
      data: [
        DataTipsEntity(
          id: 1,
          title: "Cara menyimpan uang yang baik",
          url:
              "https://blockchainmedia.id/cara-menabung-kripto-usdt-dan-usdc-di-pintu/",
          thumbnail: "https://andhikawidiarto.my.id/tips/nabung.jpg",
        ),
        DataTipsEntity(
          id: 2,
          title: "Cara berinvestasi emas",
          url:
              "https://pintu.co.id/blog/cara-investasi-emas-bagi-pemula-agar-untung",
          thumbnail: "https://andhikawidiarto.my.id/tips/emas.jpg",
        ),
        DataTipsEntity(
          id: 3,
          title: "Cara bermain saham",
          url:
              "https://www.mncsekuritas.id/pages/3-tips-investasi-saham-untuk-pemula",
          thumbnail: "https://andhikawidiarto.my.id/tips/saham.jpg",
        ),
      ],
      firstPageUrl: "https://andhikawidiarto.my.id/api/tips?page=1",
      from: 1,
      lastPage: 1,
      lastPageUrl: "https://andhikawidiarto.my.id/api/tips?page=1",
      links: [
        LinkTipsEntity(
          url: null,
          label: "&laquo; Previous",
          active: false,
        ),
        LinkTipsEntity(
          url: "https://andhikawidiarto.my.id/api/tips?page=1",
          label: "1",
          active: true,
        ),
        LinkTipsEntity(
          url: null,
          label: "&laquo; Previous",
          active: false,
        ),
      ],
      nextPageUrl: null,
      path: "https://andhikawidiarto.my.id/api/tips",
      perPage: 10,
      prevPageUrl: null,
      to: 3,
      total: 3,
    ),
  );

  test(
    'should get tips detail from the repository',
    () async {
      when(mockTipsRepository.getTips())
          .thenAnswer((_) async => Right(resultGetTips));

      final result = await getTipsUseCase.call();

      expect(result, Right(resultGetTips));
    },
  );

  test(
    'should be failed get tips detail from repository because response error',
    () async {
      when(mockTipsRepository.getTips()).thenAnswer(
        (_) async => const Left(
          ServerFailure('Something went wrong'),
        ),
      );

      final result = await getTipsUseCase.call();

      expect(result, const Left(ServerFailure('Something went wrong')));
    },
  );

  test(
    'should be failed get tips detail from repository because socker connection',
    () async {
      when(mockTipsRepository.getTips()).thenAnswer(
        (_) async => const Left(
          ConnectionFailure('Failed to connect to the network'),
        ),
      );

      final result = await getTipsUseCase.call();

      expect(result,
          const Left(ConnectionFailure('Failed to connect to the network')));
    },
  );
}

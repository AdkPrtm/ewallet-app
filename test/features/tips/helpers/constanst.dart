import 'package:template_clean_architecture/features/tips/data/models/models.dart';
import 'package:template_clean_architecture/features/tips/domain/entities/tips_entities.dart';

var testTipsResponse = TipsResponse(
  status: 'success',
  message: '',
  data: ResultTipsResponse(
    currentPage: 1,
    data: [
      DataTipsResponse(
        id: 1,
        title: "Cara menyimpan uang yang baik",
        url:
            "https://blockchainmedia.id/cara-menabung-kripto-usdt-dan-usdc-di-pintu/",
        thumbnail: "https://andhikawidiarto.my.id/tips/nabung.jpg",
      ),
      DataTipsResponse(
        id: 2,
        title: "Cara berinvestasi emas",
        url:
            "https://pintu.co.id/blog/cara-investasi-emas-bagi-pemula-agar-untung",
        thumbnail: "https://andhikawidiarto.my.id/tips/emas.jpg",
      ),
      DataTipsResponse(
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
      LinksTipsResponse(
        url: null,
        label: "&laquo; Previous",
        active: false,
      ),
      LinksTipsResponse(
        url: "https://andhikawidiarto.my.id/api/tips?page=1",
        label: "1",
        active: true,
      ),
      LinksTipsResponse(
        url: null,
        label: "Next &raquo;",
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

var testTipsEntity = TipsEntity(
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
        label: "Next &raquo;",
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

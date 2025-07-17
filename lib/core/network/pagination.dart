class Pagination {

  Pagination({
    this.page = 1,
    this.pageTotal = 1,
    this.limit = 20,
  });
  int page;
  int pageTotal;
  int limit;

  bool get hasNextPage => pageTotal > page;

  void increment() => page++;

  void dispose() {
    page = 1;
    pageTotal = 1;
  }
}

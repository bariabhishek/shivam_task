import 'package:shivam_task/service/employee_service/employee_provider.dart';

import '../api_contstant.dart';
import '../http_service.dart';

class EmployeeService implements EmployeeProvider {
  final HttpService _httpService = HttpService.instance!;

  @override
  Future getAllEmployee({int? page, int? limit}) async {
    var request = {"page": page, "limit": limit ?? 10};

    return await _httpService.get(url: API.employee, prams: request);
  }
}

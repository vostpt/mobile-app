/// Api Constants
const connectionTimeout = 60000;
const connectionReadTimeout = 30000;
const connectionWriteTimeOut = 30000;

/// API Endpoints Path
const baseUrlProd = "https://api.vost.pt/v1/";
const pathParishes = "parishes";
const pathCounties = "counties";
const pathDistricts = "districts";
const pathStatuses = "occurrences/statuses";
const pathTypes = "occurrences/types";
const pathSpecies = "occurrences/species";
const pathFamilies = "occurrences/families";
const pathOccurrences = "occurrences";

/// API Endpoints Query Parameters
const queryPageNumber = "page[number]";
const queryPageSize = "page[size]";
const querySearch = "search";
const queryExact = "exact";
const queryEvents = "events";
const queryTypes = "types";
const queryStatuses = "statuses";
const queryDistricts = "districts";
const queryCounties = "counties";
const queryParishes = "parishes";
const querySort = "sort";
const queryOrder = "order";

/// Mock endpoints
const String mockHost = "mockserver";
const String mockBase = "http://$mockHost/";

/// Problem Report Email
const reportEmail = "email@email.com";

/// DateTime
const String EMPTY_INPUT_STRING = "--";
const String FORMAT_DATE_DAY = "day";
const String FORMAT_DATE_HOUR = "hour";
const String FORMAT_DATE_FULL = "full";

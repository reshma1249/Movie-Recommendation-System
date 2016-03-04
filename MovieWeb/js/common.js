var servicePageURL = "http://localhost:3000/api";

var BuildQueryString = function (controllerName, methodNames, queryStringParams) {
    var queryString = servicePageURL + "/" + controllerName;
    if (methodNames.length) {
        for (var i = 0; i < methodNames.length; i++) {
            queryString = queryString + "/" + methodNames[i];
        }
    }
    if (queryStringParams) {
        queryString = queryString + "?" + jQuery.param(queryStringParams);
    }
    return queryString;
};

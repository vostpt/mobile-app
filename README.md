# vost

Aplicação para VOST

## Pre-Requisites

In order to be able to run this app, you will need to generate your own mapbox credentials.

1 - Create a new account in https://www.mapbox.com/ and request a new key to be used in the project
2 - Create a `keys.dart` file at the root of the project
3 - Inside it add the `MAPBOX_ACCESS_TOKEN` as the token you created on the mapbox website
4 - Add also a `MAPBOX_URL_TEMPLATE`, eg: `https://api.tiles.mapbox.com/v4/{id}/{z}/{x}/{y}@2x.png?access_token={accessToken}` can be used as default

## Project Structure

* data - Manages the API and Local data
* domain - Manages the business logic of the application
* di - Manages the dependency Injection of the application
* presentation - Manages the UI, routing and blocs

## Code of Conduct

This project adheres to the Contributor Covenant code of conduct. By participating, you are expected to uphold this code. Please report unacceptable behavior to info@flutter.pt.

## License
This project is open source software licensed under the [MIT LICENSE](LICENSE.md).

import ExpoModulesCore

public class ExpoSeamMobileSdkModule: Module {
  public func definition() -> ModuleDefinition {
    Name("ExpoSeamMobileSdk")

    // Імітація функції ініціалізації Seam SDK
    AsyncFunction("initializeSeam") { (apiToken: String, clientSessionToken: String?, promise: Promise) in
      // Логіка замоки
      let mockResponse = "Mocked: Seam SDK initialized successfully with token: \(apiToken)"
      print(mockResponse)

      // Завершення з успіхом
      promise.resolve(mockResponse)
    }
  }
}

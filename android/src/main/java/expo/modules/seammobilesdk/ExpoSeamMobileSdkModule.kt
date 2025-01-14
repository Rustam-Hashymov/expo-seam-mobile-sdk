package expo.modules.seammobilesdk

import expo.modules.kotlin.Promise
import expo.modules.kotlin.modules.Module
import expo.modules.kotlin.modules.ModuleDefinition
import co.seam.api.Seam

class ExpoSeamMobileSdkModule : Module() {

  private var seam: Seam? = null

  override fun definition() = ModuleDefinition {
      Name("ExpoSeamMobileSdk")

      // Ініціалізація SDK
      AsyncFunction("initializeSeam") { apiToken: String, clientSessionToken: String?, promise: Promise ->
          try {
              seam = initializeSeam(
                apiToken = apiToken,
                clientSessionToken = clientSessionToken ?: "bbd4d0ac-cc2c-4197-a670-6b3256b9bdc8", // Взято з JSON
                baseUrl = "https://connect.getseam.com"
              )
              promise.resolve("Seam SDK initialized successfully with token: $apiToken")
          } catch (e: Exception) {
              promise.reject("ERR_SEAM_INIT", e.message ?: "Initialization failed", e)
          }
      }
  }

    private fun initializeSeam(
        apiToken: String,
        clientSessionToken: String? = null,
        baseUrl: String = "https://connect.getseam.com"
    ): Seam {
        val context = appContext.reactContext?.applicationContext
            ?: throw IllegalStateException("Application context is null.")

        return Seam(
            androidContext = context,
            clientSessionToken = clientSessionToken,
            apiToken = apiToken,
            baseUrl = baseUrl
        )
    }

}

import { NativeModule, requireNativeModule } from "expo";
import { IExpoSeamMobileSdkModule } from "./ExpoSeamMobileSdk.types";

// Клас для роботи з нативним модулем Seam SDK
declare class ExpoSeamMobileSdkModule extends NativeModule<IExpoSeamMobileSdkModule> {
  /**
   * Ініціалізація Seam SDK
   * @param apiToken Токен для авторизації
   */
  initializeSeam(apiToken: string, clientSessionToken?: string): Promise<string>;

  // /**
  //  * Виклик методу SDK
  //  * @param methodName Ім'я методу
  //  * @param args Аргументи для методу
  //  */
  // callSeamMethod(methodName: string, args: SeamMethodArgs): Promise<any>;
  //
  // /**
  //  * Отримання списку методів
  //  */
  // getAvailableMethods(): Promise<string[]>;
}

// Завантаження нативного модуля
export default requireNativeModule<ExpoSeamMobileSdkModule>(
  "ExpoSeamMobileSdk"
);

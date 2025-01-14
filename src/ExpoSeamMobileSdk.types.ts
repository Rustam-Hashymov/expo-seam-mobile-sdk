// Типи для аргументів і відповідей методів Seam SDK
export type SeamMethodArgs = any[]; // Масив аргументів для будь-якого методу

export interface IExpoSeamMobileSdkModule {
  /**
   * Ініціалізація Seam SDK
   * @param apiToken Токен для авторизації
   * @param clientSessionToken
   * @returns Результат ініціалізації
   */
  initializeSeam(
    apiToken: string,
    clientSessionToken?: string,
  ): Promise<string>;

  // /**
  //  * Динамічний виклик методу SDK
  //  * @param methodName Ім'я методу SeamSDK
  //  * @param args Аргументи для методу
  //  * @returns Результат виклику
  //  */
  // callSeamMethod(methodName: string, args: SeamMethodArgs): Promise<any>;
  //
  // /**
  //  * Отримання списку всіх доступних методів SDK
  //  * @returns Масив імен методів
  //  */
  // getAvailableMethods(): Promise<string[]>;

  // Додати підтримку подій
  [event: string]: any; // Це дозволяє модулю підтримувати події.
}

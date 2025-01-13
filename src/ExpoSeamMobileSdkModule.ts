import { NativeModule, requireNativeModule } from 'expo';

import { ExpoSeamMobileSdkModuleEvents } from './ExpoSeamMobileSdk.types';

declare class ExpoSeamMobileSdkModule extends NativeModule<ExpoSeamMobileSdkModuleEvents> {
  PI: number;
  hello(): string;
  setValueAsync(value: string): Promise<void>;
}

// This call loads the native module object from the JSI.
export default requireNativeModule<ExpoSeamMobileSdkModule>('ExpoSeamMobileSdk');

import { WebPlugin } from '@capacitor/core';

import type { capacitorGpsEnableIosPlugin, GpsIsEnabled } from './definitions';

export class capacitorGpsEnableIosWeb
  extends WebPlugin
  implements capacitorGpsEnableIosPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO hiiii', options);
    return options;
  };
  async isGpsEnabled(): Promise<GpsIsEnabled> {
    const output = true
    return output;
  };
  // async tunOnGpsDialog(){}

}



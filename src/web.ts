import { WebPlugin } from '@capacitor/core';

import type { capacitorGpsEnableIosPlugin, GpsStatus } from './definitions';

export class capacitorGpsEnableIosWeb
  extends WebPlugin
  implements capacitorGpsEnableIosPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO hiiii', options);
    return options;
  };
  async isGpsEnabled(options: { value: string }): Promise<String> {
    console.log(options)
    // const output = ""
    // return output
    return options.value
}
  // async tunOnGpsDialog(){}

}



import { WebPlugin } from '@capacitor/core';

import type { capacitorGpsEnableIosPlugin } from './definitions';

export class capacitorGpsEnableIosWeb
  extends WebPlugin
  implements capacitorGpsEnableIosPlugin
{
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
